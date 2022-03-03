package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.GpsDAO;
import Model.GpsVO;


@WebServlet("/gps")
public class gps extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("teext/html; charset=UTF-8");
		
		double longitude = Double.parseDouble(request.getParameter("longitude"));
		double latitude = Double.parseDouble(request.getParameter("latitude"));
		String loc_date = request.getParameter("loc_date");
		
		System.out.print("위도 :" + latitude );
		System.out.print("경도 :" + longitude );
		System.out.println("현재시간 :"+loc_date);
		
		GpsDAO dao = new GpsDAO();
		GpsVO vo = new GpsVO(latitude, longitude, loc_date);
		
		response.setStatus(200);	
		
		return;
		
		
	
	
	}
	
}
