package com.cognizant.hi.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.cognizant.hi.model.Clinic;
import com.cognizant.hi.service.ClinicService;

@Controller
@SessionAttributes("clinic")
public class ClinicController {

	@Autowired
	ClinicService clinicService;

	@ModelAttribute("clinic")
	public Clinic getClinic() {
		return new Clinic();
	}

	@RequestMapping(value = "/showclinic", method = RequestMethod.GET)
	public String createClinic(Model model) {
		model.addAttribute("clinic", new Clinic());
		return "addclinic";
	}

	@RequestMapping(value = "/saveclinic", method = RequestMethod.POST)
	public String addClinic(@Valid @ModelAttribute("clinic") Clinic clinic, BindingResult bresult, ModelMap model,
			RedirectAttributes attributes) {
		if (bresult.hasErrors()) {

			return "addclinic";
		}

		else {
			boolean result = clinicService.addClinic(clinic);
			System.out.println("result=" + result);

			attributes.addFlashAttribute("message", "New Clinic Added successfully.");
			return "redirect:/home";

		}

	}

}
