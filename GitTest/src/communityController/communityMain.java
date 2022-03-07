
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
import Model.MemberVO;

@WebServlet("/communityMain")
public class communityMain extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		String mem_id = request.getParameter("mem_id");
		
		CommunityDAO dao = new CommunityDAO();
		List<CommunityVO> list = dao.communitySelect();
		String id = list.get(0).getMem_id();
		
		request.setAttribute("list", list);
		
		RequestDispatcher rd = request.getRequestDispatcher("communityMain.jsp");
		rd.forward(request, response);
		
		if(mem_id.contains("jp")) {
			RequestDispatcher rd1 = request.getRequestDispatcher("ManageCommunitymain.jsp");
			rd1.forward(request, response);
		}
		else {
		RequestDispatcher rd1 = request.getRequestDispatcher("communityMain.jsp");
		rd1.forward(request, response);
		}
		
		
	}

}
