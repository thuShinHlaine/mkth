package com.SpringReg.Dto;

import java.util.Date;

import javax.persistence.Column;

import com.SpringReg.model.Gender;
import com.SpringReg.model.MaritalStatus;

import lombok.Data;

@Data
public class PatientDto {

	private Long id;

	private String prn;

	private String firstName;

	private String middleName;

	private String lastName;

	private String fullName;

	private String fatherName;

	private Gender gender;

	private String prefix;

	private MaritalStatus maritalStatus;

	private Date dob;

	private Long age;

	private String ageUnit;

}
