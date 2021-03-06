package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.MemberDAO;
import Model.MemberVO;


@WebServlet("/JoinService")
public class JoinService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");
		
		String mem_id = request.getParameter("mem_id");
		String mem_pw = request.getParameter("mem_pw");
		String mem_name = request.getParameter("mem_name");
		String mem_gender = request.getParameter("mem_gender");
		String mem_birthdate = request.getParameter("mem_birthdate");
		String mem_tel = request.getParameter("mem_tel");
		String mem_guardian_tel = request.getParameter("mem_guardian_tel");
		String jp_num = request.getParameter("jp_num");
		
		
		MemberVO vo = new MemberVO(mem_id, mem_pw, mem_name, mem_gender, mem_tel, mem_guardian_tel,mem_birthdate, jp_num);
		
		MemberDAO dao = new MemberDAO();
		
		
		int cnt = dao.join(vo);
		
		if(cnt > 0) {
			
			response.setContentType("text/html; charset=UTF-8");
			 
			PrintWriter out = response.getWriter();
			 
			out.println("<script>alert('회원가입 성공'); location.href='Main.jsp';</script>");
			 
			out.flush();

			//성공
			
		}else {
			//실패
			
			response.setContentType("text/html; charset=UTF-8");
			 
			PrintWriter out = response.getWriter();
			 
			out.println("<script>alert('회원가입 실패'); location.href='Join.jsp';</script>");
			 
			out.flush();
			
		}
	}

}
