package com.SpringReg.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.Formula;
import org.hibernate.annotations.UpdateTimestamp;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = false)
@Entity
public class Patient implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(columnDefinition = "INT(6) ZEROFILL")
	private Long id;

	@Formula("concat(\"PRN\",id)")
	private String prn;

	@CreationTimestamp
	@Column(name = "createAt")
	private Date createAt;

	@UpdateTimestamp
	@Column(name = "updateAt")
	private Date updateAt;

	@NotNull
	@Column(name = "firstName")
	private String firstName;

	@Column(name = "middleName")
	private String middleName;

	@NotNull
	@Column(name = "lastName")
	private String lastName;

	@Formula("concat(first_name,\" \",last_name)")
	private String fullName;

	@Column(name = "fatherName")
	private String fatherName;

	@NotNull
	@Enumerated(EnumType.ORDINAL)
	private Gender gender;

	private String prefix;

	@Column(name = "maritalStatus")
	@Enumerated(EnumType.STRING)
	private MaritalStatus maritalStatus;

	private Date dob;

	private Long age;

	@Column(name = "ageUnit")
	private String ageUnit;

}
