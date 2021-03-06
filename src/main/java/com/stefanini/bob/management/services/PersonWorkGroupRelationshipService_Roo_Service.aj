// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.stefanini.bob.management.services;

import com.stefanini.bob.management.domain.PersonWorkGroupRelationship;
import com.stefanini.bob.management.services.PersonWorkGroupRelationshipService;
import java.util.List;

privileged aspect PersonWorkGroupRelationshipService_Roo_Service {
    
    public abstract long PersonWorkGroupRelationshipService.countAllPersonWorkGroupRelationships();    
    public abstract void PersonWorkGroupRelationshipService.deletePersonWorkGroupRelationship(PersonWorkGroupRelationship personWorkGroupRelationship);    
    public abstract PersonWorkGroupRelationship PersonWorkGroupRelationshipService.findPersonWorkGroupRelationship(Long id);    
    public abstract List<PersonWorkGroupRelationship> PersonWorkGroupRelationshipService.findAllPersonWorkGroupRelationships();    
    public abstract List<PersonWorkGroupRelationship> PersonWorkGroupRelationshipService.findPersonWorkGroupRelationshipEntries(int firstResult, int maxResults);    
    public abstract void PersonWorkGroupRelationshipService.savePersonWorkGroupRelationship(PersonWorkGroupRelationship personWorkGroupRelationship);    
    public abstract PersonWorkGroupRelationship PersonWorkGroupRelationshipService.updatePersonWorkGroupRelationship(PersonWorkGroupRelationship personWorkGroupRelationship);    
}
