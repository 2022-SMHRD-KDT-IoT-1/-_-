package Model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class CommunityDAO {

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

	public int Community(CommunityVO vo) {

		SqlSession session = sqlSessionFactory.openSession();

		int cnt = session.insert("", vo);

		session.close();

		return cnt;
	}

	// 목록보기
	public List<CommunityVO> selectCommunity() {

		SqlSession session = sqlSessionFactory.openSession();

		List<CommunityVO> list = session.selectList("selectCommunity");

		session.close();

		return list;
	}

	// 게시글보기 // 순번
	public CommunityVO viewCommunity(int num) {

		SqlSession session = sqlSessionFactory.openSession();

		CommunityVO vo = session.selectOne("viewCommunity", num);

		session.close();

		return vo;

	}
	
	public int deleteCommunity (CommunityVO vo) {
		
		SqlSession session = sqlSessionFactory.openSession();
		
		int cnt = session.delete("deleteCommunity", vo);
		
		session.close();
		
		return cnt;
		
	}
	
	public int updateCommunity(CommunityVO vo) {
		
		SqlSession session = sqlSessionFactory.openSession();
		
		int cnt = session.update("updateCommunity", vo);
		
		session.close();
		
		return cnt;
	}
}


