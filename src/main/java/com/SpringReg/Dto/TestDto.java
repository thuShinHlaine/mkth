package com.SpringReg.Dto;

import java.util.Date;

import javax.persistence.Column;

import lombok.Data;

@Data
public class TestDto {

	private Long id;

	private String name;

	private String prn;

	private Date dob;

	private Long age;

	private String ageUnit;

}
