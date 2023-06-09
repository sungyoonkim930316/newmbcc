package com.mbcc.frontController;

import java.util.HashMap;

import com.mbcc.controller.member.LoginCheckController;
import com.mbcc.controller.member.MainController;
import com.mbcc.controller.member.MemberInsertController;
import com.mbcc.controller.member.ValidateIdController;
import com.mbcc.controller.member.deleteMeberController;
import com.mbcc.controller.notice.BoardNoticeWriteController;
import com.mbcc.controller.notice.noticeShowController;
import com.mbcc.controller.approval.BoardApprovalController;
import com.mbcc.controller.approval.BoardApprovalWriteController;
import com.mbcc.controller.calendar.CalendarController;
import com.mbcc.controller.calendar.CalendarDeleteController;
import com.mbcc.controller.calendar.CalendarInsertController;
import com.mbcc.controller.calendar.CalendarShowController;
import com.mbcc.controller.drive.DriveController;
import com.mbcc.controller.meeting.MeetingController;
import com.mbcc.controller.member.AddMemberController;
import com.mbcc.controller.member.AddressListController;
import com.mbcc.controller.member.LogOutController;
import com.mbcc.controller.task.BoardTaskChangePgController;
import com.mbcc.controller.task.BoardTaskController;
import com.mbcc.controller.task.BoardTaskDeleteController;
import com.mbcc.controller.task.BoardTaskWriteController;

public class HandlerMapping {
	private HashMap<String, Controller> mappings;
	
	public HandlerMapping() {
		mappings = new HashMap<String, Controller>();
		mappings.put("/main.do", new MainController());
		mappings.put("/task.do", new BoardTaskController());
		mappings.put("/taskwrite.do", new BoardTaskWriteController());
		mappings.put("/deletetask.do", new BoardTaskDeleteController());
		mappings.put("/updateprogress.do", new BoardTaskChangePgController());
		mappings.put("/approval.do", new BoardApprovalController());
		mappings.put("/approvalwrite.do", new BoardApprovalWriteController());
		mappings.put("/meeting.do", new MeetingController());
		mappings.put("/drive.do", new DriveController());
		mappings.put("/insertmember.do", new MemberInsertController());
		mappings.put("/loginCheck.do", new LoginCheckController());
		mappings.put("/Address.do", new AddressListController());
		mappings.put("/logout.do", new LogOutController());
		mappings.put("/mk/addMember.do", new MemberInsertController());
		mappings.put("/addMember.do", new AddMemberController());
		mappings.put("/validateId.do", new ValidateIdController());
		mappings.put("/calendar.do", new CalendarController());
		mappings.put("/ajax.do", new CalendarShowController());
		mappings.put("/delCalendar.do", new CalendarDeleteController());
		mappings.put("/insertCal.do", new CalendarInsertController());
		mappings.put("/notice.do", new noticeShowController());
		mappings.put("/NoticeWrite.do", new BoardNoticeWriteController());
		mappings.put("/checkRole.do", new BoardNoticeWriteController());
		mappings.put("/deleteMember.do", new deleteMeberController());
		
	}

	public Controller getController(String key) {
		return mappings.get(key);
	}
}
