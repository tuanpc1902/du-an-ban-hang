package com.tuanpc.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tuanpc.dao.ProductDAO;
import com.tuanpc.entity.Product;
import com.tuanpc.service.SessionService;
import com.tuanpc.service.ShoppingCartService;

@Controller
public class ProductController {
	@Autowired
	ProductDAO dao;
	@Autowired
	ShoppingCartService cart;

	@RequestMapping("/product/sort")
	public String sort(Model model, 
		@RequestParam("field") Optional<String> field) {
		Sort sort = Sort.by(Direction.DESC, field.orElse("price"));
		model.addAttribute("field", field.orElse("price").toUpperCase());
		List<Product> items = dao.findAll(sort);
		model.addAttribute("items", items);
		return "product/index";
	}

	@RequestMapping("/product")
	public String paginate(Model model,
			@RequestParam("p") Optional<Integer> p) {
		Pageable pageable = PageRequest.of(p.orElse(0), 5);
		Page<Product> page = dao.findAll(pageable);
		model.addAttribute("page", page);
		return "product/index";
	}

	@Autowired
	SessionService session;

	@RequestMapping("/product/search")
	public String searchAndPage(Model model, 
			@RequestParam("keywords") Optional<String> kw,
			@RequestParam("p") Optional<Integer> p) {
		String kwords = kw.orElse(session.get("keywords", ""));
		session.set("keywords", kwords);
		Pageable pageable = PageRequest.of(p.orElse(0), 5);
		//Page<Product> page = dao.findByKeywords("%"+kwords+"%", pageable); //lab6.3
		Page<Product> page = dao.findAllByNameLike("%"+kwords+"%", pageable); //lab6.5
		model.addAttribute("page", page);
		return "product/index";
	}
	
	
	@RequestMapping("/product/edit/{id}")
	public String edit(Model model, @PathVariable("id") Integer id) {
		Product item = dao.findById(id).get();
		model.addAttribute("item", item);
		List<Product> items = dao.findAll();
		model.addAttribute("items", items);
		return "product/edit";
	}
	
	@RequestMapping("/product/create-product")
	public String create() {
		
		return "product/create";
	}
	
	@RequestMapping("/product/create")
	public String create(Product item) {
		dao.save(item);
		return "redirect:/product/create";
	}

	// hàm 4
	@RequestMapping("/product/update")
	public String update(Product item) {
		dao.save(item);
//		return "redirect:/product/edit/" + item.getId();
		return "redirect:/product";
	}

	// hàm 5
	@RequestMapping("/product/delete/{id}")
	public String delete(@PathVariable("id") Integer id) {
		dao.deleteById(id);
		return "redirect:/product";
	}
	
	

}

