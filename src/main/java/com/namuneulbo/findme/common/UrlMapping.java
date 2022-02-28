package com.namuneulbo.findme.common;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UrlMapping {
	@RequestMapping(value="/guide/definition.do")
	public String definitionView() {
		return "guide/definition";
	}
	
	@RequestMapping(value="/guide/step.do")
	public String stepView() {
		return "guide/step";
	}
	
	@RequestMapping(value="/guide/info.do")
	public String infoView() {
		return "guide/info";
	}
	
	@RequestMapping(value="/guide/center.do")
	public String centerView() {
		return "guide/center";
	}
}
