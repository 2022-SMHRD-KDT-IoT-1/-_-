package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.GpsDAO;
import Model.GpsVO;

@WebServlet("/SOS")
public class SOS extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		double longitude = Double.parseDouble(request.getParameter("longitude"));
		double latitude = Double.parseDouble(request.getParameter("latitude"));
		String sos_memo = "hjh950424";
		String sos_status = "현재 위치는" +" 위도 :"+latitude + " 경도 : "+ longitude;
		String mem_id = "hjh950424";
		String loc_memo = "";
		
		System.out.print("위도 :" + latitude );
		System.out.print("경도 :" + longitude );
		
		
		GpsDAO dao = new GpsDAO();
		GpsVO vo = new GpsVO(mem_id, latitude, longitude, loc_memo);
		
		int cnt = dao.load(vo);
		
		if(cnt > 0) {
			
			
			response.setStatus(200);	
			 
			
			//성공
			
		}else {
			//실패
			
			response.setStatus(400);	
			 
			
			
		}
		
		
		return;
		
		
		
	}

}
