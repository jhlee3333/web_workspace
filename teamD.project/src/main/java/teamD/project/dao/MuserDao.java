package teamD.project.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import mybatis.SqlSessionBean;
import teamD.project.dto.MuserDto;

public class MuserDao {		
	
	public MuserDao login(Map<String,String> map)  {
		SqlSession mapperSession = SqlSessionBean.getSession();
		MuserDao vo = mapperSession.selectOne("Muser.login",map);
		mapperSession.close();
		return vo;
	}
	
	public List<MuserDao> select(){
		SqlSession mapperSession = SqlSessionBean.getSession();
		List<MuserDao> list = mapperSession.selectList("Muser.select");
		mapperSession.close();
		return list;
	}
	
	public int insert(MuserDao user){
		SqlSession mapperSession = SqlSessionBean.getSession();
		int result =mapperSession.insert("Muser.insert",user);
		mapperSession.commit();
		mapperSession.close();
		return result;
		
	}
}