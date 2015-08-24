package com.stefanini.bob.management.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class WorkGroup {
	
	public WorkGroup(){}
	public WorkGroup(String name){
		this.name = name;
	}

    /**
     */
    private String name;
}
