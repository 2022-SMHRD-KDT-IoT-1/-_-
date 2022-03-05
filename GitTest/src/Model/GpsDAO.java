package Model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class GpsDAO {
	
	private static SqlSessionFactory sqlSessionFactory;

	static {
		try {
			String resource = "Mapper/config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
			System.out.println("들어오니");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public int load(GpsVO vo) {
		
		SqlSession session = sqlSessionFactory.openSession(true);
		
		int cnt = session.insert("GPSload", vo);
		
		session.close();
		
		return cnt;	
	}
	
	public GpsVO detect(String mem_id){
		
		SqlSession session = sqlSessionFactory.openSession();
	
		System.out.println("detect");
		GpsVO vo= session.selectOne("GPSdetect",mem_id); 
		System.out.println("detect2222");
		session.close();
		
		return vo;
		
	}
}
	
	
	
	
	

