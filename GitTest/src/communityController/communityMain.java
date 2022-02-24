package communityController;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.CommunityDAO;
import Model.CommunityVO;

@WebServlet("/communityMain")
public class communityMain extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		CommunityDAO dao = new CommunityDAO();
		List<CommunityVO> communityList = dao.communitySelect();

		request.setAttribute("communityList", communityList);

		RequestDispatcher rd = request.getRequestDispatcher("communityMain.jsp");
		rd.forward(request, response);
	}

}
