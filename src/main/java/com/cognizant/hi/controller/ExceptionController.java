package com.cognizant.hi.controller;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

import com.cognizant.hi.exception.RecordNotFoundException;

@ControllerAdvice
public class ExceptionController {
   @ExceptionHandler(value = RecordNotFoundException.class)
	   public ModelAndView exception(RecordNotFoundException exception) {
	   ModelAndView model=new ModelAndView();
	   model.setViewName("error");
	   model.addObject("errorMsg","Records not found");
	      return model;
	   }
  
   
	}

