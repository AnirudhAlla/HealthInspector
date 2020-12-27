package com.cognizant.hi.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.cognizant.hi.entity.AppointmentEntity;
import com.cognizant.hi.entity.ClinicEntity;
import com.cognizant.hi.entity.DoctorEntity;
import com.cognizant.hi.exception.RecordNotFoundException;
import com.cognizant.hi.model.Clinic;
import com.cognizant.hi.model.Doctor;
import com.cognizant.hi.model.UserLogin;
import com.cognizant.hi.service.AppointmentService;
import com.cognizant.hi.service.ClinicService;
import com.cognizant.hi.service.DoctorService;

@Controller
@SessionAttributes("doctor")
public class DoctorController {
	@Autowired
	DoctorService doctorService;

	@Autowired
	ClinicService clinicService;

	@Autowired
	AppointmentService appointmentService;

	@ModelAttribute("doctor")
	public Doctor getDoctor() {
		return new Doctor();
	}

	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public String createClinic(Model model, @SessionAttribute("userLogin") UserLogin usr) {
		model.addAttribute("doctor", new Doctor());
		model.addAttribute("userid", usr.getUserid());
		List<ClinicEntity> clinicList = clinicService.fetchClinicDetails();
		model.addAttribute("clinicList", clinicList);
		return "updateDoctor";
	}

	@RequestMapping(value = "/savedoctor", method = RequestMethod.POST)
	public String saveDoctor(@ModelAttribute("doctor") Doctor doctor, RedirectAttributes attributes) {
		System.out.println("clinic id=" + doctor.getClinicId());
		boolean result = doctorService.addDoctor(doctor);
		System.out.println("result=" + result);
		attributes.addFlashAttribute("message", "Doctor details updated successfully.");
		return "redirect:/home";
	}

	@RequestMapping(value = "/show", method = RequestMethod.GET)
	public String search(Model model) {
		return "search";
	}

	@RequestMapping(value = "/SbS", method = RequestMethod.GET)
	public String SbS(Model model, @ModelAttribute("doctor") Doctor doctor, RedirectAttributes attributes) {
		model.addAttribute("doctor", new Doctor());
		List<String> specialityList = doctorService.fetchSpeciality();
		model.addAttribute("specialityList", specialityList);
		return "searchSpeciality";
	}

	@RequestMapping(value = "/getDoctors", method = RequestMethod.POST)
	public String getDoctors(Model model, @RequestBody String speciality, RedirectAttributes attributes) {
		speciality = speciality.substring(11, speciality.length());
		List<DoctorEntity> doctorList = doctorService.fetchDoctorBySpeciality(speciality);
		System.out.println(doctorList.get(0).getTime());

		model.addAttribute("doctorModel", new Doctor());
		model.addAttribute("doctorList", doctorList);
		return "doctorsList";
	}

	@RequestMapping(value = "/SbF", method = RequestMethod.GET)
	public String SbF(Model model, @ModelAttribute("clinic") Clinic clinic, RedirectAttributes attributes) {

		List<ClinicEntity> clinicList = clinicService.fetchClinicDetails();
		model.addAttribute("clinicList", clinicList);
		return "searchFacility";
	}

	@RequestMapping(value = "/SbL", method = RequestMethod.GET)
	public String findLocality(Model model) {
		model.addAttribute("clinic", new ClinicEntity());
		return "searchLocality";

	}

	@RequestMapping(value = "/findLocality", method = RequestMethod.POST)
	public String findClinicByLocality(@ModelAttribute("clinic") ClinicEntity clinic, Model model,
			RedirectAttributes attributes) {
		List<ClinicEntity> clinics = clinicService.findClinicByLocality(clinic.getLocality());
		System.out.println("clinics" + clinics.get(0).getClinicId());
		System.out.println("Employee found");
		model.addAttribute("clinicModel", new ClinicEntity());
		model.addAttribute("clinic", clinics);
		return "clinics";

	}

	@RequestMapping(value = "/searchDoctors", method = RequestMethod.POST)
	public String searchDoctorsByClinic(@ModelAttribute("clinicModel") Clinic clinicModel, Model model,
			RedirectAttributes attributes) {
		System.out.println(clinicModel.getClinicId());
		List<DoctorEntity> doctorsList = doctorService.fetchDoctorByClinic(clinicModel.getClinicId());
		model.addAttribute("doctorModel", new DoctorEntity());
		model.addAttribute("doctorsList", doctorsList);
		return "doctorListSBL";

	}

	@RequestMapping(value = "/listAppointments", method = RequestMethod.GET)
	public String listAppointments(Model model, @SessionAttribute(name = "userLogin", required = false) UserLogin usr) {
		System.out.println("doctor=" + usr.getUserid());
		List<AppointmentEntity> appointments = appointmentService.fetchAllAppointments(usr.getUserid());
		if (appointments != null) {
			List<AppointmentEntity> approvedAppointments = new ArrayList<>();
			appointments.forEach((appointment) -> {
				if (appointment.getAppointmentStatus().equals("A"))
					approvedAppointments.add(appointment);
			});
			if (approvedAppointments.isEmpty())
				throw new RecordNotFoundException();
			model.addAttribute("approvedAppointments", approvedAppointments);

		}
		return "doctorAppointments";
	}

	@RequestMapping(value = "/updatePatientDetails", method = RequestMethod.GET)
	public String patientDetails(@RequestParam("appointmentId") int appointmentId, Model model,
			@ModelAttribute("app") AppointmentEntity app) {

		System.out.println(appointmentId);
		AppointmentEntity appointment = doctorService.fetchAppointment(appointmentId);
		model.addAttribute("appointment", appointment);
		return "updatePatient";
	}

	@RequestMapping(value = "/confirmUpdate", method = RequestMethod.POST)
	public String confirmUpdate(Model model, RedirectAttributes attributes,
			@ModelAttribute("app") AppointmentEntity app) {
		System.out.println(app.getDoctorName().getUserid());
		if (app.getRevisitDate() == "")
			app.setRevisitDate(null);
		appointmentService.updatePatientDetails(app.getAppointmentId(), app.getSymptoms(), app.getDiagnosis(),
				app.getPrescription(), app.getTreatmentPlanned(), app.getRevisitRequired(), app.getRevisitDate());
		attributes.addFlashAttribute("message", "Record updated successfully.");
		return "redirect:/home";
	}

	@RequestMapping(value = "/changeStatus", method = RequestMethod.POST)
	public String changeStatus(@ModelAttribute("appointment") AppointmentEntity appointment,
			RedirectAttributes attributes) {
		System.out.println(appointment);
		appointmentService.updateAppointment(appointment.getAppointmentId(), appointment.getAppointmentStatus());
		if (appointment.getAppointmentStatus().equals("A")) {
			appointmentService.generatePatientId(appointment.getAppointmentId());
		}
		attributes.addFlashAttribute("message", "Appointment updated successfully.");
		return "redirect:/home";
	}

	@RequestMapping(value = "/updatedRecords", method = RequestMethod.GET)
	public String updatedRecords(Model model, @SessionAttribute(name = "userLogin", required = false) UserLogin usr) {
		List<AppointmentEntity> doctorRecords = appointmentService.updatedRecords(usr.getUserid());
		if (doctorRecords.isEmpty())
			throw new RecordNotFoundException();

		model.addAttribute("records", doctorRecords);
		return "updatedRecords";
	}

	@RequestMapping(value = "/getPatientAppointments", method = RequestMethod.GET)
	public String patientAppointments(Model model,
			@SessionAttribute(name = "userLogin", required = false) UserLogin usr) {
		List<AppointmentEntity> patientRecords = appointmentService.fetchPatientAppointments(usr.getUserid());

		if (patientRecords.isEmpty())
			throw new RecordNotFoundException();
		model.addAttribute("records", patientRecords);

		return "patientRecords";

	}

	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
}