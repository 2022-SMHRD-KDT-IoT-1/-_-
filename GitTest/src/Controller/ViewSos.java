package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.SosDAO;
import Model.SosVO;




@WebServlet("/ViewSos")
public class ViewSos extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int sos_seq =Integer.parseInt(request.getParameter("num"));
		
	
		SosDAO dao = new SosDAO();
		SosVO svo = dao.viewSos(sos_seq);
		
		System.out.println(svo);
		
		 request.setAttribute("svo", svo);
		 RequestDispatcher rd = request.getRequestDispatcher("SOSlocation.jsp");
		 rd.forward(request, response);
	}

}
