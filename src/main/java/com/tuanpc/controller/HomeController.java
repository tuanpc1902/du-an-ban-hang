package com.tuanpc.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tuanpc.dao.CategoryDAO;
import com.tuanpc.dao.ProductDAO;
import com.tuanpc.entity.Product;
import com.tuanpc.service.SessionService;

@Controller
public class HomeController {
	@Autowired
	ProductDAO dao;
	CategoryDAO category;
//	@RequestMapping("/index")
//	public String sort(Model model) {
//		List<Product> items = dao.findAll(); // truy vấn tất cả
//		model.addAttribute("items", items);
//		return "index";
//	}
	
	@RequestMapping("/index")
	public String paginate(Model model,
		@RequestParam("p") Optional<Integer> p) {
		Pageable pageable = PageRequest.of(p.orElse(0), 10);
		Page<Product> page = dao.findAll(pageable);
		model.addAttribute("page", page);
		return "index";
		//return "product/page2"; // giao dien dep
	}

	@Autowired
	SessionService session;

	@RequestMapping("/index/search")
	public String searchAndPage(Model model, 
		@RequestParam("keywords") Optional<String> kw,
		@RequestParam("p") Optional<Integer> p) {
		String kwords = kw.orElse(session.get("keywords", ""));
		session.set("keywords", kwords);
		Pageable pageable = PageRequest.of(p.orElse(0), 5);
		//Page<Product> page = dao.findByKeywords("%"+kwords+"%", pageable); //lab6.3
		Page<Product> page = dao.findAllByNameLike("%"+kwords+"%", pageable); //lab6.5
		model.addAttribute("page", page);
		return "index";
	}
	
	// Detail Product
	@RequestMapping("/detail/{id}")
	public String detail(Model model, @PathVariable("id") Integer id) {
		Product item = dao.findById(id).get();
		model.addAttribute("item", item);
		List<Product> items = dao.findAll();
		model.addAttribute("items", items);
		return "detail";
	}
}
