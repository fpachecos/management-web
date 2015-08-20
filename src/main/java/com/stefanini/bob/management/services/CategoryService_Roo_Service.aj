// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.stefanini.bob.management.services;

import com.stefanini.bob.management.domain.Category;
import com.stefanini.bob.management.services.CategoryService;
import java.util.List;

privileged aspect CategoryService_Roo_Service {
    
    public abstract long CategoryService.countAllCategorys();    
    public abstract void CategoryService.deleteCategory(Category category);    
    public abstract Category CategoryService.findCategory(Long id);    
    public abstract List<Category> CategoryService.findAllCategorys();    
    public abstract List<Category> CategoryService.findCategoryEntries(int firstResult, int maxResults);    
    public abstract void CategoryService.saveCategory(Category category);    
    public abstract Category CategoryService.updateCategory(Category category);    
}
