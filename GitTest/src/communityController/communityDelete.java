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
import Model.MemberVO;

@WebServlet("/communityDelete")
public class communityDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {

		HttpSession session = request.getSession();
		System.out.println("����");
		CommunityVO vo = (CommunityVO) session.getAttribute("cvo");
		System.out.println("����222");
		
		CommunityDAO dao = new CommunityDAO();
		System.out.println("����333");
		
		int cnt = dao.communityDelete(vo.getArticle_seq());
		System.out.println("����444");
		if (cnt > 0) {
			session.removeAttribute("vo");
			response.sendRedirect("communityMain.jsp");
		}else {
			System.out.println("�Խñ� ���� ����");
		}
		
		
	}

}
