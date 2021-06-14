package com.tuanpc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tuanpc.service.ShoppingCartService;

@Controller
public class ShoppingCartController {
	@Autowired
	ShoppingCartService cart; // 1. tiêm Spring Bean đã viết ở bài trước
	
	//2. xem giỏ hàng
	@RequestMapping("/cart")
	public String view(Model model) {
		model.addAttribute("cart", cart);
		return "cart/index";
	}
	
	@RequestMapping("/cart/add/{id}")
	public String add(@PathVariable("id") Integer id) {
		cart.add(id);
		return "redirect:/cart"; // hiển thị giỏ hàng
	}
	@RequestMapping("/cart/remove/{id}")
	public String remove(@PathVariable("id") Integer id) {
		cart.remove(id);
		return "redirect:/cart";
	}
	@RequestMapping("/cart/update/{id}")
	public String update(@PathVariable("id") Integer id, 
	@RequestParam("qty") Integer qty) {
		cart.update(id, qty);
		return "redirect:/cart";
	}
	@RequestMapping("/cart/clear")
	public String clear() {
		cart.clear();
		return "redirect:/cart";
	}
}
