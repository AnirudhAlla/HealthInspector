package com.cognizant.hi.service;

import java.util.List;

import com.cognizant.hi.entity.AppointmentEntity;

public interface AppointmentService {

	public List<AppointmentEntity> fetchAllAppointments(String userid);

	public void updateAppointment(int appointmentId, String appointmentStatus);

	public List<AppointmentEntity> fetchPatientAppointments(String userid);

	public List<AppointmentEntity> updatedRecords(String string);

	public void bookAppointment(AppointmentEntity appointment, String uid);

	public void generatePatientId(int appointmentId);

	public void updatePatientDetails(int appointmentId, String symptoms, String diagnosis, String prescription,
			String treatmentPlanned, String revisitRequired, String revisitDate);

}
