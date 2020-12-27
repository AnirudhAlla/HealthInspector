package com.cognizant.hi.model;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

public class User {

	@NotEmpty(message = "*Username is mandatory")
	private String userid;

	@NotEmpty(message = "*Password is mandatory")
	@Size(min = 6, max = 15, message = "*Password should be of 6-15 characters")
	private String password;

	@NotEmpty(message = "*First name is mandatory")
	private String firstName;

	@NotEmpty(message = "*Date of Birth is mandatory")
	private String dateOfBirth;
	@NotEmpty(message = "*Last name is mandatory")
	private String lastName;
	@NotEmpty(message = "*Gender is mandatory")
	private String gender;

	@Size(min = 10, max = 10, message = "*Contact Number should be 10 digits only")
	@NotEmpty(message = "*Contact Number is mandatory")
	private String contactNumber;
	@NotEmpty(message = "*Email Id is mandatory")
	@Email
	private String email;
	private String userCategory;

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public String getSecurityQuestion() {
		return securityQuestion;
	}

	public void setSecurityQuestion(String securityQuestion) {
		this.securityQuestion = securityQuestion;
	}

	@NotEmpty(message = "*Answer is mandatory")
	private String answer;
	private String securityQuestion;

	public String getUserCategory() {
		return userCategory;
	}

	public void setUserCategory(String userCategory) {
		this.userCategory = userCategory;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getContactNumber() {
		return contactNumber;
	}

	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

}
