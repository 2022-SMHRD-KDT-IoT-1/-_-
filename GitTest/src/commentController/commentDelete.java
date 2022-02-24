package commentController;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.CommentDAO;
import Model.CommentVO;


@WebServlet("/commentDelete")
public class commentDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		CommentVO vo = (CommentVO) session.getAttribute("vo");
		
		CommentDAO dao = new CommentDAO();
		
		int cnt = dao.commentDelete(vo);
		
		if (cnt > 0) {
			session.removeAttribute("Vo");
			response.sendRedirect("communityView.jsp");
		}else {
			System.out.println("댓글 달기 실패");
		}
			
	}

}
