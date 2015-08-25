package com.stefanini.bob.management.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.persistence.Column;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Person {

    public Person() {
    }

    public Person(String name) {
        this.name = name;
    }

    /**
     */
    @NotNull
    @Size(max = 200)
    private String name;

    /**
     */
    @Column(unique = true)
    private String accessUserName;
}