package com.tuanpc.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.tuanpc.entity.*;

public interface CategoryDAO extends JpaRepository<Category, String>{
}
