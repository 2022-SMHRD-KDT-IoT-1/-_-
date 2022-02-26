package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.MessagingDAO;
import Model.MessagingVO;

@WebServlet("/MessagingService")
public class MessagingService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		MessagingDAO dao = new MessagingDAO();
		List<MessagingVO> list = dao.SendMessaging();
		
		request.setAttribute("Messaging", list);
		
		RequestDispatcher rd = request.getRequestDispatcher("SOSManage.jsp");
		rd.forward(request, response);	
		
		
		
	}

}
