package com.project.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.ComplainVO;
import com.project.model.StaffVO;
import com.project.utils.BaseMethods;

@Controller
public class MainController {

	
	@RequestMapping(value="/")
	public ModelAndView loadIndex(){
		return new ModelAndView("login");
	}
	
	@RequestMapping(value="/register")
	public ModelAndView loadRegistrationPage(){
		return new ModelAndView("register");
	}
	
	
	@RequestMapping(value="/admin/index")
	public ModelAndView loadAdmin(){
		String userName = BaseMethods.getUserName();
		return new ModelAndView("admin/index","userName",userName);
	}
	
	@RequestMapping(value="/staff/index")
	public ModelAndView loadStaff(){
		String userName = BaseMethods.getUserName();
		return new ModelAndView("staff/index","userName",userName);
	}
	
	@RequestMapping(value = "/logout", method = {RequestMethod.POST, RequestMethod.GET})	
	public String viewUserDetails(ModelMap model,HttpServletResponse response,HttpServletRequest request) {

		  Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	        if (auth != null) {
	            new SecurityContextLogoutHandler().logout(request, response, auth);
	            request.getSession().invalidate();
	            request.getSession().setAttribute("tempStatus", "success");
	            request.getSession().setAttribute("statusText", "Logout Successfully!");
	}
	        return "login";
	        }
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView load() {

		return new ModelAndView("login");
	}
	
	@RequestMapping(value = "/403", method = RequestMethod.GET)
	public ModelAndView load403() {

		return new ModelAndView("login");
	}
	
	@RequestMapping(value="/admin/ManageDatasets")
	public ModelAndView loadDataset(){
		String userName = BaseMethods.getUserName();
		return new ModelAndView("admin/ManageDatasets");
	}
		@RequestMapping(value="/admin/ManagePhotos")
		public ModelAndView loadPhotos(){
			String userName = BaseMethods.getUserName();
			return new ModelAndView("admin/ManagePhotos");
		}	
			@RequestMapping(value="/admin/ManageReports")
			public ModelAndView loadReports(){
				String userName = BaseMethods.getUserName();
				return new ModelAndView("admin/ManageReports");
			}	
				
			@RequestMapping(value="/admin/ModeDetection")
			public ModelAndView loadDetection(){
				String userName = BaseMethods.getUserName();
				return new ModelAndView("admin/ModeDetection");
			}
			@RequestMapping(value="/admin/validation")
			public ModelAndView loadValidation(@ModelAttribute ComplainVO complaintVO){
				String userName = BaseMethods.getUserName();
				return new ModelAndView("admin/validation","ComplainVO",new ComplainVO());
			}
}
