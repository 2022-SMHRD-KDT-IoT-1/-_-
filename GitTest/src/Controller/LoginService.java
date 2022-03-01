package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.MemberDAO;
import Model.MemberVO;

@WebServlet("/LoginService")
public class LoginService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String mem_id = request.getParameter("mem_id");
		String mem_pw = request.getParameter("mem_pw");

		MemberVO vo = new MemberVO(mem_id, mem_pw);

		MemberDAO dao = new MemberDAO();

		MemberVO uvo = dao.login(vo);

		
		if (uvo != null) {

			if (mem_id.contains("jp")) {

				HttpSession session = request.getSession();
				session.setAttribute("vo", uvo);

				response.setContentType("text/html; charset=UTF-8");

				PrintWriter out = response.getWriter();

				out.println("<script>alert('관리자 로그인'); location.href='ManagerMain.jsp';</script>");

				out.flush();
			} else {
				HttpSession session = request.getSession();
				session.setAttribute("vo", uvo);

				response.setContentType("text/html; charset=UTF-8");

				PrintWriter out = response.getWriter();

				out.println("<script>alert('로그인 성공'); location.href='LoginMain.jsp';</script>");

				out.flush();

			}

		} else {
			response.setContentType("text/html; charset=UTF-8");

			PrintWriter out = response.getWriter();

			out.println("<script>alert('로그인 실패'); location.href='Login.jsp';</script>");

			out.flush();

		}

	}

}
