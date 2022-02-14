package com.SpringReg.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.SpringReg.model.Test;

public interface TestJpaRepository extends JpaRepository<Test, Long>{

}
