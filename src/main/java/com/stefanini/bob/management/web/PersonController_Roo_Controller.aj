// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.stefanini.bob.management.web;

import com.stefanini.bob.management.domain.Person;
import com.stefanini.bob.management.services.PersonService;
import com.stefanini.bob.management.web.PersonController;
import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect PersonController_Roo_Controller {
    
    @Autowired
    PersonService PersonController.personService;
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String PersonController.create(@Valid Person person, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, person);
            return "people/create";
        }
        uiModel.asMap().clear();
        personService.savePerson(person);
        return "redirect:/people/" + encodeUrlPathSegment(person.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String PersonController.createForm(Model uiModel) {
        populateEditForm(uiModel, new Person());
        return "people/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String PersonController.show(@PathVariable("id") Long id, Model uiModel) {
        uiModel.addAttribute("person", personService.findPerson(id));
        uiModel.addAttribute("itemId", id);
        return "people/show";
    }
    
        
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String PersonController.update(@Valid Person person, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, person);
            return "people/update";
        }
        uiModel.asMap().clear();
        personService.updatePerson(person);
        return "redirect:/people/" + encodeUrlPathSegment(person.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String PersonController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, personService.findPerson(id));
        return "people/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String PersonController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        Person person = personService.findPerson(id);
        personService.deletePerson(person);
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/people";
    }
    
    void PersonController.populateEditForm(Model uiModel, Person person) {
        uiModel.addAttribute("person", person);
    }
    
    String PersonController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        } catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}
