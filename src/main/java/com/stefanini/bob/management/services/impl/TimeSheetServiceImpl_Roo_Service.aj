// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.stefanini.bob.management.services.impl;

import com.stefanini.bob.management.dao.TimeSheetDAO;
import com.stefanini.bob.management.domain.TimeSheet;
import com.stefanini.bob.management.services.impl.TimeSheetServiceImpl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect TimeSheetServiceImpl_Roo_Service {
    
    declare @type: TimeSheetServiceImpl: @Service;
    
    declare @type: TimeSheetServiceImpl: @Transactional;
    
    @Autowired
    TimeSheetDAO TimeSheetServiceImpl.timeSheetDAO;
    
    public long TimeSheetServiceImpl.countAllTimeSheets() {
        return timeSheetDAO.count();
    }
    
    public void TimeSheetServiceImpl.deleteTimeSheet(TimeSheet timeSheet) {
        timeSheetDAO.delete(timeSheet);
    }
    
    public TimeSheet TimeSheetServiceImpl.findTimeSheet(Long id) {
        return timeSheetDAO.findOne(id);
    }
    
    public List<TimeSheet> TimeSheetServiceImpl.findAllTimeSheets() {
        return timeSheetDAO.findAll();
    }
    
    public List<TimeSheet> TimeSheetServiceImpl.findTimeSheetEntries(int firstResult, int maxResults) {
        return timeSheetDAO.findAll(new org.springframework.data.domain.PageRequest(firstResult / maxResults, maxResults)).getContent();
    }
    
    public void TimeSheetServiceImpl.saveTimeSheet(TimeSheet timeSheet) {
        timeSheetDAO.save(timeSheet);
    }
    
    public TimeSheet TimeSheetServiceImpl.updateTimeSheet(TimeSheet timeSheet) {
        return timeSheetDAO.save(timeSheet);
    }
    
}
