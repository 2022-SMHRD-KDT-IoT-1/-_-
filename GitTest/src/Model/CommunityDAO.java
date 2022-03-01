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
			System.out.println("삭제찾았니");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public int communityWrite(CommunityVO vo) {

		SqlSession session = sqlSessionFactory.openSession(true);
		
		int cnt = session.insert("communityWrite", vo);
	
		session.close();

		return cnt;
	}

	// 목록보기
	public List<CommunityVO> communitySelect() {

		SqlSession session = sqlSessionFactory.openSession();
		
		List<CommunityVO> list = session.selectList("communityMain");
		
		session.close();

		return list;
	}

	// 게시글보기 // 순번
	public CommunityVO communityView(int num) {

		SqlSession session = sqlSessionFactory.openSession();

		CommunityVO vo = session.selectOne("communityView", num);

		session.close();

		return vo;

	}
	
	public int communityDelete (int article_seq) {
		System.out.println("삭제하니1111");
		SqlSession session = sqlSessionFactory.openSession(true);
		System.out.println("삭제하니2222");
		int cnt = session.delete("communityDelete", article_seq);
		System.out.println("삭제삭제");
		session.close();
		
		return cnt;
		
	}
	
	public int communityUpdate(CommunityVO vo) {
		
		SqlSession session = sqlSessionFactory.openSession();
		
		int cnt = session.update("communityUpdate", vo);
		
		session.close();
		
		return cnt;
	}

	
}


