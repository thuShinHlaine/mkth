package com.SpringReg.controller.rest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.SpringReg.Dto.TestDto;
import com.SpringReg.Service.TestService;

@RestController
@RequestMapping("/api/tests")
public class TestRestController {
	
	@Autowired
	TestService testService;
	
	@GetMapping
	List<TestDto> all() {
		return testService.getAllTest();
	}

}
