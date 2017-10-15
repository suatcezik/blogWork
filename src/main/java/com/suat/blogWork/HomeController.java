package com.suat.blogWork;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.suat.yetenek.Category;
import com.suat.yetenek.DB;
import com.suat.yetenek.Post;


/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		List<Post> psls = new ArrayList<Post>();
		try {
			ResultSet rs = new DB().baglan().executeQuery("select i.baslik, i.icerik, kl.adi, kl.soyadi, k.kategori, i.tarih, i.iid from icerik as i Left Join kategori as k on i.kategori = k.katid left join kullanici as kl on kl.kid = i.ekleyen order by i.tarih DESC");
			while (rs.next()) {
				Post ps = new Post();
				ps.setIid(rs.getString("iid"));
				ps.setBaslik(rs.getString("baslik"));
				ps.setAciklama(rs.getString("icerik"));
				ps.setEkleyen(rs.getString("adi") + " "+ rs.getString("soyadi"));
				ps.setKategori(rs.getString("kategori"));
				ps.setTarih(rs.getString("tarih"));
				psls.add(ps);
			}
			model.addAttribute("posts", psls);
			System.out.println("psls : " +psls);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return "home";
	}
	
	
	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	public String detail(Model model, @PathVariable(value = "id") int id) {
		List<Post> psls = new ArrayList<Post>();
		try {
			ResultSet rs = new DB().baglan().executeQuery("select i.baslik, i.icerik, kl.adi, kl.soyadi, k.kategori, i.tarih, i.iid from icerik as i Left Join kategori as k on i.kategori = k.katid left join kullanici as kl on kl.kid = i.ekleyen where i.iid = '"+id+"'");
			if (rs.next()) {
				Post ps = new Post();
				ps.setIid(rs.getString("iid"));
				ps.setBaslik(rs.getString("baslik"));
				ps.setAciklama(rs.getString("icerik"));
				ps.setEkleyen(rs.getString("adi") + " "+ rs.getString("soyadi"));
				ps.setKategori(rs.getString("kategori"));
				ps.setTarih(rs.getString("tarih"));
				psls.add(ps);
			}
			model.addAttribute("detail", psls);
			System.out.println("detail : " +psls);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return "admin/detail";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		
		return "admin/login";
	}
	@RequestMapping(value = "/postadd", method = RequestMethod.GET)
	public String postadd(Model model, HttpServletRequest req) {
		boolean  durum = req.getSession().getAttribute("kid") != null;
		if (durum) {
			List<Category> lsct = new ArrayList<Category>();
			try {
				ResultSet rs = new DB().baglan().executeQuery("select * from kategori");
				while (rs.next()) {
					Category ct = new Category();
					ct.setKatid(rs.getString("katid"));
					ct.setKategori(rs.getString("kategori"));
					lsct.add(ct);
				}
				model.addAttribute("category", lsct);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else {
			return "redirect:login";
		}
		return "admin/postadd";
	}
	@RequestMapping(value = "/category", method = RequestMethod.GET)
	public String category(Model model,  HttpServletRequest req) {
		boolean  durum = req.getSession().getAttribute("kid") != null;
		if (durum) {
			//oturum var.
		}else {
			return "redirect:login";
		}
		return "admin/category";
	}
	
	@RequestMapping(value = "/giris", method = RequestMethod.POST)
	public String giris(Model model, @RequestParam String email, @RequestParam String parola, HttpServletRequest req, HttpServletResponse res) {
		
		String sonuc= "";
		try {
			ResultSet rs = new DB().baglan().executeQuery("select * from kullanici where mail = '"+email+"' and parola ='"+parola+"'");
			if (rs.next()) {
				//kullanici var
				req.getSession().setAttribute("kid", rs.getString("kid"));
				sonuc = "redirect:postadd";
			}
			else {
				model.addAttribute("hata", "hata");
				sonuc = "redirect:login";
			}
		} catch (Exception e) {
			System.err.println("Giriş Hatası : " + e);
			model.addAttribute("hata", "hata");
			sonuc = "redirect:login";
		}
		return sonuc;
		
	}
	
	@RequestMapping(value = "/cikis", method = RequestMethod.GET)
	public String cikisYap( HttpServletRequest req , HttpServletResponse res) {
		// bütün oturumları kapat
		req.getSession().invalidate();
		
		// çerezleri sil
		Cookie cerez = new Cookie("beni_hatirla", "");
		cerez.setMaxAge(0);
		res.addCookie(cerez);
		
		return "redirect:login";
	}	
	
}