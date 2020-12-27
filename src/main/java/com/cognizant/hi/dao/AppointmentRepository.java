package com.cognizant.hi.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.cognizant.hi.entity.AppointmentEntity;
import com.cognizant.hi.entity.UserEntity;

public interface AppointmentRepository extends JpaRepository<AppointmentEntity, Integer> {

	@Query("select u from AppointmentEntity u JOIN FETCH u.patientName where u.doctorName=?1 and u.appointmentStatus not in('R','E')")
	List<AppointmentEntity> fetchAllAppointments(UserEntity entity);

	@Transactional
	@Modifying
	@Query("update AppointmentEntity u set u.appointmentStatus=?2 where u.appointmentId=?1")
	void updateAppointment(int appointmentId, String appointmentStatus);

	@Query("select u from AppointmentEntity u JOIN FETCH u.doctorName where u.patientName=?1 and u.appointmentStatus not in('R','E')")
	List<AppointmentEntity> fetchPatientAppointments(UserEntity entity);

	@Query("select u from AppointmentEntity u join fetch u.patientName where u.appointmentId=?1 ")
	AppointmentEntity patientDetails(int appointmentId);

	@Query("select u from AppointmentEntity u join fetch u.patientName where u.doctorName=?1 and u.prescription is not null and u.prescription is not ''")
	List<AppointmentEntity> updatedRecords(UserEntity entity);

	@Query("select count(u) from AppointmentEntity u where u.clinicName=?1 and u.appointmentStatus='A' and u.patientId is not null")
	int getClinicCount(String clinicName);

	@Transactional
	@Modifying
	@Query("update AppointmentEntity u set u.patientId=?2 where u.appointmentId=?1")
	void update(int appointmentId, String patientId);

	@Transactional
	@Modifying
	@Query("update AppointmentEntity u set u.symptoms=?2, u.diagnosis=?3,u.prescription=?5,u.treatmentPlanned=?4,u.revisitRequired=?6, u.revisitDate=?7 where u.appointmentId=?1")
	void updatePatientDetails(int appointmentId, String symptoms, String diagnosis, String prescription,
			String treatmentPlanned, String revisitRequired, String revisitDate);
}
