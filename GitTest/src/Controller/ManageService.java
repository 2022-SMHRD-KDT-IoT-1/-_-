package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ManageService")
public class ManageService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * 회원 관리 페이지 컨트롤러
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("짜잔");
		System.out.println("준팡이준팡이");
		System.out.println("제발되주세요");
		System.out.println("준비된인재영");
	}

}
