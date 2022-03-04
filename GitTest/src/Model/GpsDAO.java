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
	public List<GpsVO> detect(){
		
		SqlSession session = sqlSessionFactory.openSession();
		List<GpsVO> list= session.selectList("GPSdetect"); 
		
		session.close();
		
		return list;
		
	}
}
	
	
	
	
	

