package com.cognizant.hi.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity   
@Table(name="appointment")
public class AppointmentEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int appointmentId;
	@ManyToOne(fetch = FetchType.LAZY, optional = false)
	@JoinColumn(name="doctorName", referencedColumnName="userid")
	private UserEntity doctorName;
	@ManyToOne(fetch = FetchType.LAZY, optional = false)
	@JoinColumn(name="patientName", referencedColumnName="userid")
	private UserEntity patientName;
	@Column( length = 30)
	private String appointmentStatus;
	@Column( length = 30)
	private String seen;
	@Column( length = 30)
	private String patientId;
	@Column( length = 30)
	private String symptoms;
	@Column( length = 30)
	private String diagnosis;
	@Column( length = 30)
	private String treatmentPlanned;
	@Column( length = 30)
	private String prescription;
	@Column( length = 30)
	private String revisitRequired;
	@Column( length = 30)
	private String clinicName;
	@Column( length = 30)
	private String visitDate;
	
	public String getVisitDate() {
		return visitDate;
	}
	public void setVisitDate(String visitDate) {
		this.visitDate = visitDate;
	}
	
	
	
	public String getClinicName() {
		return clinicName;
	}
	public void setClinicName(String clinicName) {
		this.clinicName = clinicName;
	}
	
	private String revisitDate;
	
	public String getRevisitRequired() {
		return revisitRequired;
	}
	public void setRevisitRequired(String revisitRequired) {
		this.revisitRequired = revisitRequired;
	}
	public String getRevisitDate() {
		return revisitDate;
	}
	public void setRevisitDate(String revisitDate) {
		this.revisitDate = revisitDate;
	}
	public String getSymptoms() {
		return symptoms;
	}
	public void setSymptoms(String symptoms) {
		
		this.symptoms = symptoms;
	}
	public String getDiagnosis() {
		return diagnosis;
	}
	public void setDiagnosis(String diagnosis) {
		this.diagnosis = diagnosis;
	}
	public String getTreatmentPlanned() {
		return treatmentPlanned;
	}
	public void setTreatmentPlanned(String treatmentPlanned) {
		this.treatmentPlanned = treatmentPlanned;
	}
	public String getPrescription() {
		return prescription;
	}
	public void setPrescription(String prescription) {
		this.prescription = prescription;
	}
	public int getAppointmentId() {
		return appointmentId;
	}
	public void setAppointmentId(int appointmentId) {
		this.appointmentId = appointmentId;
	}
	public UserEntity getDoctorName() {
		return doctorName;
	}
	public void setDoctorName(UserEntity doctorName) {
		this.doctorName = doctorName;
	}
	public UserEntity getPatientName() {
		return patientName;
	}
	public void setPatientName(UserEntity patientName) {
		this.patientName = patientName;
	}
	public String getAppointmentStatus() {
		return appointmentStatus;
	}
	public void setAppointmentStatus(String appointmentStatus) {
		this.appointmentStatus = appointmentStatus;
	}
	public String getSeen() {
		return seen;
	}
	public void setSeen(String seen) {
		this.seen = seen;
	}
	public String getPatientId() {
		return patientId;
	}
	public void setPatientId(String patientId) {
		this.patientId = patientId;
	}

	
}
