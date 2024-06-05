package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbmember.MemberDao;

@WebServlet("/update")
public class UpdateAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(
			HttpServletRequest request, 
			HttpServletResponse response) 
					throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		String custno     = request.getParameter("custno"); 
		String phone      = request.getParameter("phone"); 
		String address    = request.getParameter("address"); 
		String grade      = request.getParameter("grade"); 
		String city       = request.getParameter("city");
		
		MemberDao   mDao  = new MemberDao();
		mDao.updateMember(custno, phone, address, grade, city);
		
		String url = "list2.jsp";
		response.sendRedirect(url);
		
	}

}










