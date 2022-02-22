package communityController;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.CommunityDAO;
import Model.CommunityVO;

@WebServlet("/communityView")
public class communityView extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	int num = Integer.parseInt(request.getParameter("num"));
	
	CommunityDAO dao = new CommunityDAO();
	CommunityVO cvo = dao.communityView(num);
	
	request.setAttribute("cvo", cvo);
	
	RequestDispatcher rd = request.getRequestDispatcher("communityView.jsp");
	rd.forward(request, response);
	}

}
