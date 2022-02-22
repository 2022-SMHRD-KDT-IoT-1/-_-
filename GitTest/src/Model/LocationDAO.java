package Model;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class LocationDAO {

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

	public int Location(LocationVO vo) {

		SqlSession session = sqlSessionFactory.openSession(true);

		int cnt = session.insert("", vo);

		session.close(); // service

		return cnt;
	}

}
