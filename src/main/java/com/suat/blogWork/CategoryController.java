package com.suat.blogWork;

import java.sql.SQLException;


import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.suat.yetenek.DB;

@Controller
public class CategoryController {

	@RequestMapping(value="/categoryadd", method = RequestMethod.POST)
	public String categoryadd(@RequestParam String kategori) {
		
		
		try {
			int sonuc = new DB().baglan().executeUpdate("INSERT INTO kategori VALUES (NULL, '"+kategori+"' )");
			if (sonuc>0) {
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:category";
	}

}
