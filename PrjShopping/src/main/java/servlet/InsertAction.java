package servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbmember.DBConn;
import dbmember.MemberDao;

@WebServlet("/insert")
public class InsertAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//System.out.println("doGet");
	    //response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(
			HttpServletRequest request,
			HttpServletResponse response) 
					throws ServletException, IOException {
		//System.out.println("doPost");
		//doGet(request, response);
		
		// 한글 인코딩 처리 : POST 방식
		request.setCharacterEncoding("utf-8");
		
		String  custname   = request.getParameter("custname");
		String  phone      = request.getParameter("phone");
		String  address    = request.getParameter("address");
		String  joindate   = request.getParameter("joindate");
		String  grade      = request.getParameter("grade");
		String  city       = request.getParameter("city");
		
		// System.out.println(custname);
		
		MemberDao  mDao = new MemberDao();
		try {
			mDao.addMember(custname, phone, address, joindate, grade, city);
		} catch (SQLException e) {		
			e.printStackTrace();
		}
		
		String  url = "list2.jsp";
		response.sendRedirect(url);
		
	}

}







