package com.SpringReg.Service.Impl;

import java.util.ArrayList;
import java.util.List;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.SpringReg.Dto.EthnicityDto;
import com.SpringReg.Service.EthnicityService;

import com.SpringReg.model.Ethnicity;
import com.SpringReg.repository.EthnicityJpaRepository;


@Service
public class EthnicityServiceImpl implements EthnicityService{
	
	@Autowired(required = true)
	ModelMapper mapper;
	
	@Autowired
	EthnicityService ethnicityService;
	
	@Autowired
	EthnicityJpaRepository ethnicityJpaRepository;
	
	private List<EthnicityDto> entityListToDto(Iterable<Ethnicity> ethnicitys) {
		List<EthnicityDto> ethnicityDto = new ArrayList<EthnicityDto>();
		for (Ethnicity ethnicity : ethnicitys) {
			EthnicityDto dto = mapper.map(ethnicity, EthnicityDto.class);
			ethnicityDto.add(dto);
		}

		return ethnicityDto;
	}

	

	@Override
	public List<EthnicityDto> getAllEthicity() {
		Iterable<Ethnicity> itemlist =this.ethnicityJpaRepository.findAll();
		return entityListToDto(itemlist);
	}

}
