package com.tuanpc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tuanpc.dao.AccountDAO;
import com.tuanpc.entity.Account;
import com.tuanpc.service.SessionService;

@Controller
public class AccountController {
	@Autowired
	AccountDAO dao;
	@Autowired
	SessionService session;
	
	@GetMapping("/login")
	public String login() {
		return "index";
	}
	@PostMapping("/login")
	public String login(Model model,
			@RequestParam("username") String username,
			@RequestParam("password") String password) {
		try {
			Account user = dao.getOne(username);
			if(!user.getPassword().equals(password)) {
				model.addAttribute("message", "Mật khẩu không hợp lệ");
			} else {
				String uri = session.get("security-uri");
				if(uri != null) {
					return "redirect:" + uri;
				} else {
					model.addAttribute("message", "Đăng nhập thành công");
					System.out.println("Đăng nhập thành công");
				}
				if(user.isAdmin()) {
					return "redirect:/product";
				}
				else {
					return "redirect:/index";
				}
			}
		} catch (Exception e) {
			model.addAttribute("message", "Tài khoản không hợp lệ");
			System.out.println("Đăng nhập thất bại");
		}
		return "redirect:/index";
	}
}
