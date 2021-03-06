// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.stefanini.bob.management.services;

import com.stefanini.bob.management.domain.TimeSheet;
import com.stefanini.bob.management.services.TimeSheetService;
import java.util.List;

privileged aspect TimeSheetService_Roo_Service {
    
    public abstract long TimeSheetService.countAllTimeSheets();    
    public abstract void TimeSheetService.deleteTimeSheet(TimeSheet timeSheet);    
    public abstract TimeSheet TimeSheetService.findTimeSheet(Long id);    
    public abstract List<TimeSheet> TimeSheetService.findAllTimeSheets();    
    public abstract List<TimeSheet> TimeSheetService.findTimeSheetEntries(int firstResult, int maxResults);    
    public abstract void TimeSheetService.saveTimeSheet(TimeSheet timeSheet);    
    public abstract TimeSheet TimeSheetService.updateTimeSheet(TimeSheet timeSheet);    
}
