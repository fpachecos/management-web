// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.stefanini.bob.management.domain;

import com.stefanini.bob.management.domain.Person;
import com.stefanini.bob.management.domain.PersonWorkGroupRelationship;
import com.stefanini.bob.management.domain.WorkGroup;

privileged aspect PersonWorkGroupRelationship_Roo_JavaBean {
    
    public Person PersonWorkGroupRelationship.getPerson() {
        return this.person;
    }
    
    public void PersonWorkGroupRelationship.setPerson(Person person) {
        this.person = person;
    }
    
    public WorkGroup PersonWorkGroupRelationship.getWorkGroup() {
        return this.workGroup;
    }
    
    public void PersonWorkGroupRelationship.setWorkGroup(WorkGroup workGroup) {
        this.workGroup = workGroup;
    }
    
}
