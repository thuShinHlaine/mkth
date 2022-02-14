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

import com.SpringReg.Dto.PatientDto;
import com.SpringReg.Dto.PrefixDto;
import com.SpringReg.Dto.TestDto;
import com.SpringReg.Service.PrefixService;
import com.SpringReg.Service.TestService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class HelloController {
	@Autowired
	PrefixService prefixService;
	
	@Autowired
	TestService testService;
	
	
	@GetMapping
	public String helloWorld(Model model) {
		String name="Shune Lae";
		model.addAttribute("name",name);
		
		List<PrefixDto> prefixs =prefixService.getAllPrefix();
		model.addAttribute("prefixs",prefixs);	
		
		return "hello";		
	}
	
	
	
	@GetMapping("/test")
	public String zeroFill(Model model) {
		TestDto testDto = new TestDto();
		model.addAttribute("test", testDto);
	
		return "zeroFill";		
	}
	
	@PostMapping("/test")
	public String createTest(@Valid @ModelAttribute("test") TestDto test, Errors errors) {
		if (errors.hasErrors()) {
			log.info("Post Controller has Error");
			
			return "zeroFill";
		} else {
			log.info("Post Controller"+ test);
			this.testService.saveTest(test);
			
			return "redirect:patient";
		}

	}
	
	

}
