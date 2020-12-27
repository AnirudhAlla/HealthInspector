package com.cognizant.hi.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.cognizant.hi.entity.AppointmentEntity;
import com.cognizant.hi.entity.UserEntity;
import com.cognizant.hi.model.Doctor;
import com.cognizant.hi.model.UserLogin;
import com.cognizant.hi.service.AppointmentService;

@Controller
@SessionAttributes("doctor")
public class AppointmentController {
	@Autowired
	AppointmentService appointmentService;

	@RequestMapping(value = "/appointment", method = RequestMethod.POST)
	public String appointment(@ModelAttribute("doctorModel") Doctor doctorModel, RedirectAttributes attributes,
			@SessionAttribute(name = "userLogin", required = false) UserLogin usr) {
		AppointmentEntity appointment = new AppointmentEntity();
		String uid = doctorModel.getUserid();
		System.out.println("id=" + uid);
		UserEntity patient = new UserEntity();
		patient.setUserid(usr.getUserid());
		appointment.setPatientName(patient);
		appointment.setAppointmentStatus("P");
		appointment.setSeen("F");
		appointment.setVisitDate(doctorModel.getVisitDate());
		appointmentService.bookAppointment(appointment, uid);
		attributes.addFlashAttribute("message", "New appointment created successfully.");
		return "redirect:/home";
	}

}
