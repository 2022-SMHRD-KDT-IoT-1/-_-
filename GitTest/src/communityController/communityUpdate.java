package communityController;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.CommunityDAO;
import Model.CommunityVO;

@WebServlet("/communityUpdate")
public class communityUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();
		CommunityVO vo = (CommunityVO) session.getAttribute("vo");
		
		CommunityDAO dao = new CommunityDAO();
		int cnt = dao.communityUpdate(vo);
		
		if (cnt > 0) {
			session.getAttribute("vo");
			response.sendRedirect("communityMain.jsp");
			
		}else {
			System.out.println("게시글 수정 실패");
		}
		
	
	}

}
