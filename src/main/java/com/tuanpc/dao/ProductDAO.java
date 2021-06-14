package com.tuanpc.dao;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.tuanpc.entity.*;

public interface ProductDAO extends JpaRepository<Product, Integer>{

//	@Query("SELECT o FROM Product o WHERE o.price BETWEEN ?1 AND ?2")
//	List<Product> findByPrice(double minPrice, double maxPrice);
//	List<Product> findByPriceBetween(double minPrice, double maxPrice);

//@Query("SELECT o FROM Product o WHERE o.name LIKE ?1")
//Page<Product> findByKeywords(String keywords, Pageable pageable);

	//Page<Product> findAllByNameLike(String keywords, Pageable pageable);

//	@Query("SELECT new Report(o.category, sum(o.price), count(o)) "
//			+ " FROM Product o "
//			+ " GROUP BY o.category"
//			+ " ORDER BY sum(o.price) DESC");
	//List<Report> getInventoryByCategory();
	
	
	//lab6.1
//	@Query("SELECT o FROM Product o WHERE o.price BETWEEN ?1 AND ?2")
//	List<Product> findByPrice(double minPrice, double maxPrice);
	//lab6.4
	List<Product> findByPriceBetween(double minPrice, double maxPrice);
	
	//lab6.2
//	@Query("SELECT o FROM Product o WHERE o.name LIKE ?1")
//	Page<Product> findByKeywords(String keywords, Pageable pageable);

	//lab6.5
	Page<Product> findAllByNameLike(String keywords, Pageable pageable);
	
	
	//lab6.3
	@Query("SELECT new Report(o.category, sum(o.price), count(o)) "
			+ " FROM Product o "
			+ " GROUP BY o.category"
			+ " ORDER BY sum(o.price) DESC")
	List<Report> getInventoryByCategory();


}



