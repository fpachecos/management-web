// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.stefanini.bob.management.services;

import com.stefanini.bob.management.domain.PersonProjectRelationship;
import com.stefanini.bob.management.services.PersonProjectRelationshipService;
import java.util.List;

privileged aspect PersonProjectRelationshipService_Roo_Service {
    
    public abstract long PersonProjectRelationshipService.countAllPersonProjectRelationships();    
    public abstract void PersonProjectRelationshipService.deletePersonProjectRelationship(PersonProjectRelationship personProjectRelationship);    
    public abstract PersonProjectRelationship PersonProjectRelationshipService.findPersonProjectRelationship(Long id);    
    public abstract List<PersonProjectRelationship> PersonProjectRelationshipService.findAllPersonProjectRelationships();    
    public abstract List<PersonProjectRelationship> PersonProjectRelationshipService.findPersonProjectRelationshipEntries(int firstResult, int maxResults);    
    public abstract void PersonProjectRelationshipService.savePersonProjectRelationship(PersonProjectRelationship personProjectRelationship);    
    public abstract PersonProjectRelationship PersonProjectRelationshipService.updatePersonProjectRelationship(PersonProjectRelationship personProjectRelationship);    
}
