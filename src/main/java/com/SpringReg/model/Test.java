package com.SpringReg.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.Formula;
import org.hibernate.annotations.UpdateTimestamp;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = false)
@Entity
public class Test implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(columnDefinition = "INT(6) ZEROFILL")
	private Long id;
	
	private String name;
	
	private Date dob;
	
	private Long age;
	
	@Column(name ="ageUnit")
	private String ageUnit;
	
	
	@Formula("concat(\"PRN\",id)")
	private String prn;
	
	@CreationTimestamp
	@Column(name="createAt")
	private Date createAt ;
	
	@UpdateTimestamp
	@Column(name="updateAt")
	private Date updateAt;

}
