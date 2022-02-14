package com.SpringReg.Service.Impl;

import java.util.ArrayList;
import java.util.List;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.SpringReg.Dto.PrefixDto;
import com.SpringReg.Service.PrefixService;
import com.SpringReg.model.Prefix;
import com.SpringReg.repository.PrefixJpaRepository;

@Service
public class PrefixServiceImpl implements PrefixService{
	
	@Autowired(required = true)
	ModelMapper mapper;
	
	@Autowired
	PrefixService prefixService;
	
	@Autowired
	PrefixJpaRepository prefixJpaRepository;
	
	private List<PrefixDto> entityListToDto(Iterable<Prefix> prefixs) {
		List<PrefixDto> prefixDto = new ArrayList<PrefixDto>();
		for (Prefix prefix : prefixs) {
			PrefixDto dto = mapper.map(prefix, PrefixDto.class);
			prefixDto.add(dto);
		}

		return prefixDto;
	}

	@Override
	public List<PrefixDto> getAllPrefix() {
		
		Iterable<Prefix> itemlist =this.prefixJpaRepository.findAll();
		return entityListToDto(itemlist);
	}

}
