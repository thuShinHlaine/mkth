package com.SpringReg.Service.Impl;

import java.util.ArrayList;
import java.util.List;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.SpringReg.Dto.PatientDto;
import com.SpringReg.Dto.PatientDto;
import com.SpringReg.Dto.PatientDto;
import com.SpringReg.Dto.PatientDto;
import com.SpringReg.Service.PatientService;
import com.SpringReg.model.Patient;
import com.SpringReg.model.Patient;
import com.SpringReg.model.Patient;
import com.SpringReg.repository.PatientJpaRepository;

@Service
public class PatientServiceImpl implements PatientService {

	@Autowired
	PatientJpaRepository patientJpaRepository;

	@Autowired(required = true)
	ModelMapper mapper;

	private List<PatientDto> entityListToDto(Iterable<Patient> patients) {
		List<PatientDto> patientsDtos = new ArrayList<PatientDto>();
		for (Patient patient : patients) {
			PatientDto dto = mapper.map(patient, PatientDto.class);
			patientsDtos.add(dto);
		}

		return patientsDtos;
	}

	private Patient mapPatientDtoToEntity(PatientDto patientDto) {
		Patient patient = mapper.map(patientDto, Patient.class);

		return patient;
	}

	@Override
	public List<PatientDto> getAllPatient() {
		Iterable<Patient> patients = this.patientJpaRepository.findAll();
		return entityListToDto(patients);
	}

	@Override
	public PatientDto savePatient(PatientDto patientDto) {
		Patient patient = mapPatientDtoToEntity(patientDto);
		patient = this.patientJpaRepository.save(patient);
		return mapper.map(patient, PatientDto.class);
	}

}
