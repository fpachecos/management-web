// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.stefanini.bob.management.dao;

import com.stefanini.bob.management.dao.WorkGroupDAO;
import com.stefanini.bob.management.domain.WorkGroup;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

privileged aspect WorkGroupDAO_Roo_Jpa_Repository {
    
    declare parents: WorkGroupDAO extends JpaRepository<WorkGroup, Long>;
    
    declare parents: WorkGroupDAO extends JpaSpecificationExecutor<WorkGroup>;
    
    declare @type: WorkGroupDAO: @Repository;
    
}