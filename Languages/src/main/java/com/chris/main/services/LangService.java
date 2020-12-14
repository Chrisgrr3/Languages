package com.chris.main.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.chris.main.models.Language;
import com.chris.main.repositories.LangRepository;

@Service
public class LangService {

	private final LangRepository langRepository;
	
	public LangService(LangRepository langRepository) {
		this.langRepository = langRepository;
	}
	
	public List<Language> allLangs() {
		return langRepository.findAll();
	}
	
	public Language createLang(Language lang) {
		return langRepository.save(lang);
	}
	
	public Language updateLang(Language lang) {
		return langRepository.save(lang);
	}
	
	public Language findLang(Long id) {
		Optional<Language> optionalLang = langRepository.findById(id);
		if (optionalLang.isPresent()) {
			return optionalLang.get();
		} else {
			return null;
		}
	}
	
	public void deleteLang(Language lang) {
		langRepository.deleteById(lang.getId());
	}
}
