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
	 * ȸ�� ���� ������ ��Ʈ�ѷ�
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("¥��");
		System.out.println("������������");
		System.out.println("���ߵ��ּ���");
		System.out.println("�غ�����翵");
	}

}
