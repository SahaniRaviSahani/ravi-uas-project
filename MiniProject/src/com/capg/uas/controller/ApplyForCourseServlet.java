package com.capg.uas.controller;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.capg.uas.dto.Applicant;
import com.capg.uas.service.ApplicantManager;

/**
 * Servlet implementation class ApplyForCourseServlet
 */
@WebServlet("/applyForCourse")
public class ApplyForCourseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ApplicantManager applicantManager;

	@Override
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		super.init(config);
		applicantManager = new ApplicantManager();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String scheduledProgramId = request.getParameter("scheduledProgramId");
		request.setAttribute("scheduledProgramId", scheduledProgramId);
		request.getRequestDispatcher("ApplyForCourse.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Applicant applicant = new Applicant();
		applicant.setFullName(request.getParameter("fullName"));
		// applicant.setDateOfBirth(request.getParameter(""));
		applicant.setHighestQualification(request.getParameter("Qualification"));
		// applicant.setMarksObtained(Integer.parseInt(request.getParameter("marksObtained")));
		applicant.setEmailId(request.getParameter("Email"));
		applicant.setScheduledProgramId((request.getParameter("scheduledProgramId")));
		applicant.setStatus("Pending For Approval");
		// applicant.setDateOfInterview();
		applicant.setGoals(request.getParameter("Goals"));
		int applicationId = applicantManager.saveApplicant(applicant);
		request.setAttribute("applicationId", applicationId);
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}
}
