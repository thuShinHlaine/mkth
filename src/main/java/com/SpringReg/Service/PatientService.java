package com.SpringReg.Service;

import java.util.List;

import com.SpringReg.Dto.PatientDto;

public interface PatientService {
	
List<PatientDto> getAllPatient();
	
	PatientDto savePatient(PatientDto patient);

}
