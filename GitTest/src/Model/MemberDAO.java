package Model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MemberDAO {
	private static SqlSessionFactory sqlSessionFactory;

	static {
		
		try {
			String resource = "Mapper/config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
			

		} catch (Exception e) {
			
		}
	
	}

	public int join(MemberVO vo) {
		
		SqlSession session = sqlSessionFactory.openSession(true);
		
		int cnt = session.insert("joinService", vo);
		
		session.close();
		
		return cnt;	
	}
	
	public MemberVO login(MemberVO vo) {
		
		
		SqlSession session = sqlSessionFactory.openSession(); //얘가 안열리네용 잠만용
		System.out.println("123");
		
		System.out.println(vo.getMem_id());
		System.out.println(vo.getMem_pw());
		
		MemberVO uvo = session.selectOne("loginService", vo);
		System.out.println("456");
		session.close();
		return uvo;
	}
	
	public List<MemberVO> selectMember(){
		
		SqlSession session = sqlSessionFactory.openSession();
		List<MemberVO> list= session.selectList("manageService"); 
		
		session.close();
		
		return list;
		
	}
}
