package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.SosDAO;
import Model.SosVO;

@WebServlet("/SosService")
public class SosService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		SosDAO dao = new SosDAO();
		List<SosVO> list = dao.selectSos();
		
		request.setAttribute("list",list);
		RequestDispatcher rd = request.getRequestDispatcher("SOSManage.jsp");
		rd.forward(request, response);
	}

}
