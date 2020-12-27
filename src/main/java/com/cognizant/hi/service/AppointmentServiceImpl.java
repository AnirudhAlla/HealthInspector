package com.cognizant.hi.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cognizant.hi.dao.AppointmentRepository;
import com.cognizant.hi.entity.AppointmentEntity;
import com.cognizant.hi.entity.UserEntity;

@Service
public class AppointmentServiceImpl implements AppointmentService {

	@Autowired
	AppointmentRepository appointmentDao;

	@Override
	public void bookAppointment(AppointmentEntity appointment, String uid) {

		String id[] = uid.split(",");
		UserEntity a = new UserEntity();
		a.setUserid(id[0]);
		appointment.setDoctorName(a);
		appointment.setClinicName(id[1]);
		appointmentDao.save(appointment);
	}

	@Override
	public List<AppointmentEntity> fetchAllAppointments(String userid) {
		UserEntity entity = new UserEntity();
		entity.setUserid(userid);
		return appointmentDao.fetchAllAppointments(entity);
	}

	@Override
	public void updateAppointment(int appointmentId, String appointmentStatus) {
		appointmentDao.updateAppointment(appointmentId, appointmentStatus);
	}

	@Override
	public List<AppointmentEntity> fetchPatientAppointments(String userid) {
		UserEntity entity = new UserEntity();
		entity.setUserid(userid);
		return appointmentDao.fetchPatientAppointments(entity);
	}

	@Transactional
	@Override
	public void updatePatientDetails(int appointmentId, String symptoms, String diagnosis, String prescription,
			String treatmentPlanned, String revisitRequired, String revisitDate) {
		appointmentDao.updatePatientDetails(appointmentId, symptoms, diagnosis, prescription, treatmentPlanned,
				revisitRequired, revisitDate);

	}

	@Override
	public List<AppointmentEntity> updatedRecords(String userid) {
		UserEntity entity = new UserEntity();
		entity.setUserid(userid);
		return appointmentDao.updatedRecords(entity);
	}

	@Override
	public void generatePatientId(int appointmentId) {
		AppointmentEntity a = appointmentDao.findById(appointmentId).orElse(null);
		int count = appointmentDao.getClinicCount(a.getClinicName());
		String patientId;
		if (count < 9)
			patientId = "000" + (count + 1);
		else if (count < 99)
			patientId = "00" + (count + 1);
		else if (count < 999)
			patientId = "0" + (count + 1);
		else
			patientId = "" + (count + 1);
		patientId = a.getClinicName() + patientId;
		appointmentDao.update(appointmentId, patientId);

	}

}
