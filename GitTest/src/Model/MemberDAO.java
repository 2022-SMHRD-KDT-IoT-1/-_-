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
		
		
		SqlSession session = sqlSessionFactory.openSession();
		
		
		MemberVO uvo = session.selectOne("loginService", vo);
		
		
	
		session.close();
		return uvo;
	}
	
	public List<MemberVO> selectMember(){
		
		SqlSession session = sqlSessionFactory.openSession();
		List<MemberVO> list= session.selectList("manageService"); // where절이 없으니 id값만 들어가면 된다
		
		session.close();
		
		return list;
		
	}
}
