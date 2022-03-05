package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.CommunityDAO;
import Model.CommunityVO;
import Model.GpsDAO;
import Model.GpsVO;


@WebServlet("/ViewLocation")
public class ViewLocation extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		String mem_id = request.getParameter("mem_id");
		
		System.out.println(mem_id);
		GpsDAO dao = new GpsDAO();
		GpsVO vo = dao.detect(mem_id);
		System.out.println(vo);
		request.setAttribute("vo",vo);
		
		RequestDispatcher rd = request.getRequestDispatcher("Location.jsp");
		rd.forward(request, response);
	
	
	
	}

}
