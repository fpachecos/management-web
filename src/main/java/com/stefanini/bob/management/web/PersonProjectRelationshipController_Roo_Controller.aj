// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.stefanini.bob.management.web;

import com.stefanini.bob.management.domain.PersonProjectRelationship;
import com.stefanini.bob.management.services.PersonProjectRelationshipService;
import com.stefanini.bob.management.services.PersonService;
import com.stefanini.bob.management.services.ProjectService;
import com.stefanini.bob.management.web.PersonProjectRelationshipController;
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

privileged aspect PersonProjectRelationshipController_Roo_Controller {
    
    @Autowired
    PersonProjectRelationshipService PersonProjectRelationshipController.personProjectRelationshipService;
    
    @Autowired
    PersonService PersonProjectRelationshipController.personService;
    
    @Autowired
    ProjectService PersonProjectRelationshipController.projectService;
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String PersonProjectRelationshipController.create(@Valid PersonProjectRelationship personProjectRelationship, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, personProjectRelationship);
            return "personprojectrelationships/create";
        }
        uiModel.asMap().clear();
        personProjectRelationshipService.savePersonProjectRelationship(personProjectRelationship);
        return "redirect:/personprojectrelationships/" + encodeUrlPathSegment(personProjectRelationship.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String PersonProjectRelationshipController.createForm(Model uiModel) {
        populateEditForm(uiModel, new PersonProjectRelationship());
        return "personprojectrelationships/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String PersonProjectRelationshipController.show(@PathVariable("id") Long id, Model uiModel) {
        uiModel.addAttribute("personprojectrelationship", personProjectRelationshipService.findPersonProjectRelationship(id));
        uiModel.addAttribute("itemId", id);
        return "personprojectrelationships/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String PersonProjectRelationshipController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("personprojectrelationships", PersonProjectRelationship.findPersonProjectRelationshipEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) personProjectRelationshipService.countAllPersonProjectRelationships() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("personprojectrelationships", PersonProjectRelationship.findAllPersonProjectRelationships(sortFieldName, sortOrder));
        }
        return "personprojectrelationships/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String PersonProjectRelationshipController.update(@Valid PersonProjectRelationship personProjectRelationship, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, personProjectRelationship);
            return "personprojectrelationships/update";
        }
        uiModel.asMap().clear();
        personProjectRelationshipService.updatePersonProjectRelationship(personProjectRelationship);
        return "redirect:/personprojectrelationships/" + encodeUrlPathSegment(personProjectRelationship.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String PersonProjectRelationshipController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, personProjectRelationshipService.findPersonProjectRelationship(id));
        return "personprojectrelationships/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String PersonProjectRelationshipController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        PersonProjectRelationship personProjectRelationship = personProjectRelationshipService.findPersonProjectRelationship(id);
        personProjectRelationshipService.deletePersonProjectRelationship(personProjectRelationship);
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/personprojectrelationships";
    }
    
    void PersonProjectRelationshipController.populateEditForm(Model uiModel, PersonProjectRelationship personProjectRelationship) {
        uiModel.addAttribute("personProjectRelationship", personProjectRelationship);
        uiModel.addAttribute("people", personService.findAllPeople());
        uiModel.addAttribute("projects", projectService.findAllProjects());
    }
    
    String PersonProjectRelationshipController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
