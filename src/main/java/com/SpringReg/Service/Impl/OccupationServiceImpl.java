package com.SpringReg.Service.Impl;

import java.util.List;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.SpringReg.Dto.OccupationDto;
import com.SpringReg.Service.OccupationService;
import com.SpringReg.repository.OccupationJpaRepository;


@Service
public class OccupationServiceImpl implements OccupationService{
	
	@Autowired(required = true)
	ModelMapper mapper;
	
	@Autowired
	OccupationJpaRepository occupationJpaRepository;

	@Override
	public List<OccupationDto> getAllOccupation() {
		// TODO Auto-generated method stub
		return null;
	}

}
