package com.suat.blogWork;



import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.suat.yetenek.DB;

@Controller
public class PostContoller {

	@RequestMapping(value="/postekleme",method = RequestMethod.POST)
	public String postekleme(HttpServletRequest req) {
		 String baslik = "" +req.getParameter("baslik");
		 String kategori = "" +req.getParameter("kategori");
		 String aciklama = "" +req.getParameter("aciklama");
		 String kid = ""+req.getSession().getAttribute("kid");
		 String q = "insert into icerik values (null, '"+kategori+"', '"+baslik+"', '"+aciklama+"', now(), '"+kid+"')";
		 System.out.println("q  " + q);
		 try {
			int sonuc = new DB().baglan().executeUpdate(q);
		} catch (Exception e) {
			
		}
		
		return "redirect:postadd";
	}
	
	
	
}
