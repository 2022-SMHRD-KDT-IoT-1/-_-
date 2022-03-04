package communityController;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import Model.CommunityDAO;
import Model.CommunityVO;

@WebServlet("/communityUpdate")
public class communityUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();
		
		
		
		String savePath = request.getServletContext().getRealPath("img");
		
		int maxSize = 1024 * 1024 * 5;
				
		String encoding = "euc-kr";
		
		MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, encoding, new DefaultFileRenamePolicy());
		
		String article_title = multi.getParameter("article_title");
		String article_content = multi.getParameter("article_content");
		
		String article_file1 = multi.getParameter("article_file1");
		String article_file2 = multi.getParameter("article_file2");
		int article_seq = Integer.parseInt(multi.getParameter("article_seq"));
		String article_file3=multi.getFilesystemName("article_file3");
		String article_file4=multi.getFilesystemName("article_file3");
		
		System.out.println(article_file3);
		System.out.println(article_file4);
		
		if(article_file3 != null) {
			article_file1 = article_file3;
		}
		if(article_file4 != null) {
			article_file2 = article_file4;
		}else {
			article_file2 = article_file2;
		}
	
		
		CommunityVO vo = new CommunityVO(article_title, article_content, article_file1, article_file2, article_seq);
		
		System.out.println(article_title);
		System.out.println(article_file1);
		System.out.println(article_file2);
		System.out.println(article_content);
		System.out.println(article_seq);
		
		CommunityDAO dao = new CommunityDAO();
		
		  int cnt = dao.communityUpdate(vo);
		  if (cnt> 0) { session.setAttribute("vo",vo);
		  response.sendRedirect("communityMain");
		  
		  }
		  else { System.out.println("게시글 수정 실패"); }
		 
		
	
	}

}
