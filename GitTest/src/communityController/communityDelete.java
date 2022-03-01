package communityController;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.CommunityDAO;
import Model.CommunityVO;
import Model.MemberVO;

@WebServlet("/communityDelete")
public class communityDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {

		HttpSession session = request.getSession();
		
		
		
		int article_seq = Integer.parseInt(request.getParameter("num"));
		CommunityVO vo = (CommunityVO) session.getAttribute("cvo");
		
		
		CommunityDAO dao = new CommunityDAO();
		
		
		int cnt = dao.communityDelete(article_seq);
		
		if (cnt > 0) {
			session.removeAttribute("vo");
			response.sendRedirect("communityMain");
		}else {
			System.out.println("게시글 삭제 실패");
		}
		
		
	}

}
