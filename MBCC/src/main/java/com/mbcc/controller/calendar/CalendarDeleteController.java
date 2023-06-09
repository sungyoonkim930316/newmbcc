package com.mbcc.controller.calendar;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mbcc.dao.calendarDAO;
import com.mbcc.frontController.Controller;

public class CalendarDeleteController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		int num = Integer.parseInt(req.getParameter("no"));
		calendarDAO.getInstance().deleteCal(num);
		return "mk/calendar";
	}

}
