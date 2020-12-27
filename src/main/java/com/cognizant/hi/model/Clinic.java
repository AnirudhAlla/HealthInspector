package com.cognizant.hi.model;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

public class Clinic {
	
	@NotEmpty(message="*Clinic Name cannot be empty")
	private String clinicName;
	
	@NotEmpty(message="*Clinic Id is mandatory")
	private String clinicId;
	
	@NotEmpty(message="*Address is mandatory")
	private String address;
	  
	private String facilities;
	
	@Size(min = 10, max = 10, message = "*Contact Number should be 10 digits only")
	@NotEmpty(message="*Please provide Contact number")
	private String contactNumber;
	
	@NotEmpty(message="*Website is mandatory")
	private String website;
	@NotEmpty(message="*Locality is required")
	private String locality;
	
	
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getFacilities() {
		return facilities;
	}
	public void setFacilities(String facilities) {
		this.facilities = facilities;
	}
	
	public String getClinicName() {
		return clinicName;
	}
	public void setClinicName(String clinicName) {
		this.clinicName = clinicName;
	}
	public String getClinicId() {
		return clinicId;
	}
	public void setClinicId(String clinicId) {
		this.clinicId = clinicId;
	}
	public String getContactNumber() {
		return contactNumber;
	}
	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}
	public String getWebsite() {
		return website;
	}
	public void setWebsite(String website) {
		this.website = website;
	}
	public String getLocality() {
		return locality;
	}
	public void setLocality(String locality) {
		this.locality = locality;
	}

	

}
