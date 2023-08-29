package teamD.project.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import mybatis.SqlSessionBean;
import teamD.project.dto.McommentDto;
import teamD.project.dto.McommunityDto;

public class McommentDao {
	private static McommentDao dao = new McommentDao();
	private McommentDao() {}
	public static McommentDao getInstance() {
		return dao;
	}
	
	public List<McommunityDto> list() {
	      SqlSession mapper = SqlSessionBean.getSession();
	      List<McommunityDto> list = mapper.selectList("Mproduct.list");
	      mapper.close();
	      return list;
	   }
	
	public List<McommentDto> pagelist(Map<String,Integer> map) {
		SqlSession mapper = SqlSessionBean.getSession();
		List<McommentDto> list = mapper.selectOne("Mcomment.list");
		mapper.close();
		return list;
		
	}
	
	public int count() {
		SqlSession mapper = SqlSessionBean.getSession();
		int result = mapper.selectOne("Mcomment.count");
		mapper.close();
		return result;
		
	}

}
