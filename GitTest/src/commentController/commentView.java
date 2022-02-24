package commentController;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.CommentDAO;
import Model.CommentVO;
import Model.CommunityDAO;
import Model.CommunityVO;

@WebServlet("/commentView")
public class commentView extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		CommentDAO commentdao = new CommentDAO();
		List<CommentVO> commentList = commentdao.commentView();

		request.setAttribute("commentList", commentList);

		RequestDispatcher rd = request.getRequestDispatcher("communityView.jsp");
		rd.forward(request, response);
	}
	
	}


