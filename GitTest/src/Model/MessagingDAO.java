package Model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MessagingDAO {

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

	public int Messaging(MessagingVO vo) {

		SqlSession session = sqlSessionFactory.openSession();

		int cnt = session.insert("MessagingService", vo);

		session.close();

		return cnt;
	}

	// 메세지목록보기
	public List<MessagingVO> selectMessaging() {

		SqlSession session = sqlSessionFactory.openSession();

		List<MessagingVO> list = session.selectList("selectMessaging");

		session.close();

		return list;
	}

	// 보낸 메세지보기 // 순번
	public MessagingVO viewMessaging(int num) {

		SqlSession session = sqlSessionFactory.openSession();

		MessagingVO vo = session.selectOne("viewMessaging", num);

		session.close();

		return vo;

	}

	public int deleteMessaging(MessagingVO vo) {

		SqlSession session = sqlSessionFactory.openSession();

		int cnt = session.delete("deleteMessaging", vo);

		session.close();

		return cnt;

	}

	public int updateMessaging(MessagingVO vo) {
		
		SqlSession session = sqlSessionFactory.openSession();
		
		int cnt = session.update("updateMessaging", vo);
		
		session.close();
		
		return cnt;
	}
}
