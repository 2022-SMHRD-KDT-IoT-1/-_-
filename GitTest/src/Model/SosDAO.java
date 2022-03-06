package Model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SosDAO {

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

	
	public List<SosVO> selectSos(){
		
		SqlSession session = sqlSessionFactory.openSession();
		List<SosVO> list= session.selectList("SosService"); 
		
		session.close();
		
		return list;
		
	}

	public SosVO viewSos(int sos_seq) {
		
		
		SqlSession session = sqlSessionFactory.openSession();
		
		System.out.println(sos_seq);
		
		SosVO vo = session.selectOne("ViewSos",sos_seq);
		
		session.close();
		return  vo;
	}

}