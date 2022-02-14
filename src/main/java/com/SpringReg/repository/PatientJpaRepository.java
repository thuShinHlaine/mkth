package com.SpringReg.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.SpringReg.model.Patient;

public interface PatientJpaRepository extends JpaRepository<Patient, Long>{

}
