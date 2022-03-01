package communityController;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import Model.CommunityDAO;
import Model.CommunityVO;


@WebServlet("/communityWrite")
public class communityWrite extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	
		String savePath = request.getServletContext().getRealPath("img");
		
		int maxSize = 1024 * 1024 * 5;
				
		String encoding = "euc-kr";
		
		MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, encoding, new DefaultFileRenamePolicy());
		
		String article_title = multi.getParameter("article_title");
		String article_content = multi.getParameter("article_content");
		
		String article_file1 = multi.getFilesystemName("article_file1");
		String article_file2 = multi.getFilesystemName("article_file2");
		String mem_id = multi.getParameter("mem_id");
		CommunityVO vo = new CommunityVO(article_title, article_content, article_file1, article_file2,mem_id);
		System.out.println(article_title);
		System.out.println(article_content);
		System.out.println(article_file1);
		System.out.println(article_file2);
		System.out.println(mem_id);
		CommunityDAO dao = new CommunityDAO();
	
		int cnt = dao.communityWrite(vo);
	
		if (cnt > 0) {
			
			response.sendRedirect("communityMain.jsp");
		}else {
			response.sendRedirect("communityWrite.jsp");
		}
				
	}

}
