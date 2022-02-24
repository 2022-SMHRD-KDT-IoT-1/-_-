package Model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class CommentDAO {

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

	public int commentWrite(CommentVO vo) {

		SqlSession session = sqlSessionFactory.openSession();

		int cnt = session.insert("commentWrite", vo);

		session.close();

		return cnt;
	}

	public List<CommentVO> commentView() {

		SqlSession session = sqlSessionFactory.openSession();

		List<CommentVO> list = session.selectList("commentView");

		session.close();

		return list;

	}

	public int commentDelete(CommentVO vo) {

		SqlSession session = sqlSessionFactory.openSession();

		int cnt = session.delete("commentDelete", vo);

		session.close();

		return cnt;

	}

	/*
	 * public int commentUpdate(CommentVO vo) {
	 * 
	 * SqlSession session = sqlSessionFactory.openSession();
	 * 
	 * int cnt = session.update("commentUpdate", vo);
	 * 
	 * session.close();
	 * 
	 * return cnt; }
	 */
}
