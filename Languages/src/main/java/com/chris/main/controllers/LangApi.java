package com.chris.main.controllers;

import java.util.List;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.chris.main.models.Language;
import com.chris.main.services.LangService;

@RestController
public class LangApi {
	private final LangService langService;
	
	public LangApi(LangService langService) {
		this.langService = langService;
	}
	
	@RequestMapping(value="/api/langs", method=RequestMethod.POST)
	public Language create(@RequestParam(value="name") String name,
						   @RequestParam(value="creator") String creator,
						   @RequestParam(value="currentVersion") String currentVersion) {
		Language lang = new Language(name, creator, currentVersion);
		return langService.createLang(lang);
	}
	
	@RequestMapping(value="/api/langs", method=RequestMethod.GET)
	public List<Language> index() {
		return langService.allLangs();
	}
}
