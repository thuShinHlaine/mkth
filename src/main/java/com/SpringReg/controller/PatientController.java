package com.SpringReg.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.SpringReg.Dto.PatientDto;
import com.SpringReg.Dto.PrefixDto;
import com.SpringReg.Service.PatientService;
import com.SpringReg.Service.PrefixService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/patient")
public class PatientController {

	@Autowired
	PrefixService prefixService;

	@Autowired
	PatientService patientService;

	@GetMapping
	public String patient(Model model) {

		List<PrefixDto> prefixs = prefixService.getAllPrefix();
		model.addAttribute("prefixs", prefixs);
		
		PatientDto patient=new PatientDto();
		 model.addAttribute("patient", patient); 
		return "register";
	}

	@PostMapping
	public String createPatient(@Valid @ModelAttribute("patient") PatientDto patient, Errors errors) {
		if (errors.hasErrors()) {
			log.info("Post Controller has Error");

			return "register";
		} else {
			log.info("Post Controller" + patient);
			this.patientService.savePatient(patient);

			return "redirect:patient/patient_list";
		}

	}

	@GetMapping("/patient_list")
	public String emptyPatient(Model model) {
		List<PatientDto> patient_list = this.patientService.getAllPatient();
		model.addAttribute("patient_list", patient_list);
		return "patient_list";
	}

}
