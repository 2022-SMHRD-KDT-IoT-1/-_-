package commentController;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import Model.CommentDAO;
import Model.CommentVO;
import Model.CommunityDAO;
import Model.CommunityVO;

@WebServlet("/commentWrite")
public class commentWrite extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

String savePath = request.getServletContext().getRealPath("img");
		
				
		String encoding = "euc-kr";
		
		String comm_content = "";
	
		CommentVO vo  = new CommentVO(comm_content);
		
		CommentDAO dao = new CommentDAO();
		
		int cnt = dao.commentWrite(vo);
		
		if (cnt > 0) {
			
			response.sendRedirect("communityView");
		}else {
			response.sendRedirect("communityView.jsp");
			System.out.println("댓글달기 실패 ");
		}
				
	}
	
	}


