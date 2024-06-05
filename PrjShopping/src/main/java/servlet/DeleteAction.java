package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbmember.MemberDao;

@WebServlet("/delete")
public class DeleteAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	// 'delete?custno=10004'
	protected void doGet(
			HttpServletRequest  req, 
			HttpServletResponse res) 
					throws ServletException, IOException {
		
		// req.setCharacterEncoding("utf-8");
		String     custno  =  req.getParameter("custno");
		System.out.println( custno );
		
		// db 자료 삭제
		MemberDao  mDao    =  new MemberDao();
		mDao.deleteMember( custno );
		
		// 페이지 이동
		String   url   = "list2.jsp";
		res.sendRedirect(url);
		
		
	}

}






