package com.SpringReg.Service;

import java.util.List;

import com.SpringReg.Dto.TestDto;

public interface TestService {
	List<TestDto> getAllTest();
	
	TestDto saveTest(TestDto test);

}
