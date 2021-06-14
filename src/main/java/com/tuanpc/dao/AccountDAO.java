package com.tuanpc.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.tuanpc.entity.Account;

public interface AccountDAO extends JpaRepository<Account, String>{
}
