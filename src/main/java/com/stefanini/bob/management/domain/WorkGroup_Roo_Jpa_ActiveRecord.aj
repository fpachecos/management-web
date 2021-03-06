// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.stefanini.bob.management.domain;

import com.stefanini.bob.management.domain.WorkGroup;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect WorkGroup_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager WorkGroup.entityManager;
    
    public static final List<String> WorkGroup.fieldNames4OrderClauseFilter = java.util.Arrays.asList("name");
    
    public static final EntityManager WorkGroup.entityManager() {
        EntityManager em = new WorkGroup().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long WorkGroup.countWorkGroups() {
        return entityManager().createQuery("SELECT COUNT(o) FROM WorkGroup o", Long.class).getSingleResult();
    }
    
    public static List<WorkGroup> WorkGroup.findAllWorkGroups() {
        return entityManager().createQuery("SELECT o FROM WorkGroup o", WorkGroup.class).getResultList();
    }
    
    public static List<WorkGroup> WorkGroup.findAllWorkGroups(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM WorkGroup o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, WorkGroup.class).getResultList();
    }
    
    public static WorkGroup WorkGroup.findWorkGroup(Long id) {
        if (id == null) return null;
        return entityManager().find(WorkGroup.class, id);
    }
    
    public static List<WorkGroup> WorkGroup.findWorkGroupEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM WorkGroup o", WorkGroup.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<WorkGroup> WorkGroup.findWorkGroupEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM WorkGroup o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, WorkGroup.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void WorkGroup.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void WorkGroup.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            WorkGroup attached = WorkGroup.findWorkGroup(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void WorkGroup.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void WorkGroup.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public WorkGroup WorkGroup.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        WorkGroup merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
