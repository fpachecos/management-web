// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.stefanini.bob.management.services.impl;

import com.stefanini.bob.management.dao.PersonProjectRelationshipDAO;
import com.stefanini.bob.management.domain.PersonProjectRelationship;
import com.stefanini.bob.management.services.impl.PersonProjectRelationshipServiceImpl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect PersonProjectRelationshipServiceImpl_Roo_Service {
    
    declare @type: PersonProjectRelationshipServiceImpl: @Service;
    
    declare @type: PersonProjectRelationshipServiceImpl: @Transactional;
    
    @Autowired
    PersonProjectRelationshipDAO PersonProjectRelationshipServiceImpl.personProjectRelationshipDAO;
    
    public long PersonProjectRelationshipServiceImpl.countAllPersonProjectRelationships() {
        return personProjectRelationshipDAO.count();
    }
    
    public void PersonProjectRelationshipServiceImpl.deletePersonProjectRelationship(PersonProjectRelationship personProjectRelationship) {
        personProjectRelationshipDAO.delete(personProjectRelationship);
    }
    
    public PersonProjectRelationship PersonProjectRelationshipServiceImpl.findPersonProjectRelationship(Long id) {
        return personProjectRelationshipDAO.findOne(id);
    }
    
    public List<PersonProjectRelationship> PersonProjectRelationshipServiceImpl.findAllPersonProjectRelationships() {
        return personProjectRelationshipDAO.findAll();
    }
    
    public List<PersonProjectRelationship> PersonProjectRelationshipServiceImpl.findPersonProjectRelationshipEntries(int firstResult, int maxResults) {
        return personProjectRelationshipDAO.findAll(new org.springframework.data.domain.PageRequest(firstResult / maxResults, maxResults)).getContent();
    }
    
    public void PersonProjectRelationshipServiceImpl.savePersonProjectRelationship(PersonProjectRelationship personProjectRelationship) {
        personProjectRelationshipDAO.save(personProjectRelationship);
    }
    
    public PersonProjectRelationship PersonProjectRelationshipServiceImpl.updatePersonProjectRelationship(PersonProjectRelationship personProjectRelationship) {
        return personProjectRelationshipDAO.save(personProjectRelationship);
    }
    
}