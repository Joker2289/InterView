package kr.or.ddit.post.dao;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.or.ddit.post.model.PostVo;

@Repository("postDao")
public class PostDaoImpl implements IPostDao {

	@Resource(name="sqlSessionTemplate")
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int insert_post(PostVo postVo) {
		return sqlSession.insert("post.insert_post",postVo);
	}

	@Override
	public int update_post(PostVo postVo) {
		return sqlSession.update("post.update_post",postVo);
	}

	@Override
	public int delete_post(String post_code) {
		return sqlSession.delete("post.delete_post", post_code);
	}

	@Override
	public List<PostVo> select_memberPost(String user_id) {
		return sqlSession.selectList("post.select_memberPost", user_id);
	}


}