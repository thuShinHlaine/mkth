package com.SpringReg.Service.Impl;

import java.util.ArrayList;
import java.util.List;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.SpringReg.Dto.TestDto;
import com.SpringReg.Service.TestService;
import com.SpringReg.model.Test;
import com.SpringReg.repository.TestJpaRepository;

@Service
public class TestSericeImpl implements TestService {

	@Autowired
	TestJpaRepository testJpaRepository;

	@Autowired(required = true)
	ModelMapper mapper;
	
	private List<TestDto> entityListToDto(Iterable<Test> tests) {
		List<TestDto> testDtos = new ArrayList<TestDto>();
		for (Test movie : tests) {
			TestDto dto = mapper.map(movie, TestDto.class);
			testDtos.add(dto);
		}

		return testDtos;
	}

	@Override
	public TestDto saveTest(TestDto testDto) {
		Test test = mapTestDtoToEntity(testDto);

		test = this.testJpaRepository.save(test);

		return mapper.map(test, TestDto.class);
	}

	private Test mapTestDtoToEntity(TestDto movieDto) {
		Test test = mapper.map(movieDto, Test.class);

		return test;
	}

	@Override
	public List<TestDto> getAllTest() {
		Iterable<Test> tests = this.testJpaRepository.findAll();
		return entityListToDto(tests);
		
	}
}
