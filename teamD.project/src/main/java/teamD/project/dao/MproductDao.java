package teamD.project.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import mybatis.SqlSessionBean;
import teamD.project.dto.McommunityDto;
import teamD.project.dto.MproductDto;


public class MproductDao {
   private static MproductDao dao = new MproductDao();
   private MproductDao() {}
   public static MproductDao getInstance() {
      return dao;
   }


   public List<McommunityDto> list() {
      SqlSession mapper = SqlSessionBean.getSession();
      List<McommunityDto> list = mapper.selectList("Mproduct.list");
      mapper.close();
      return list;
   }
   
   public List<MproductDto> pagelist(Map<String,Integer> map) {
      SqlSession mapper = SqlSessionBean.getSession();
      List<MproductDto> list = mapper.selectList("Mproduct.pagelist",map);
      mapper.close();
      return list;
      
   }
      
   
   public int count() {
      SqlSession mapper = SqlSessionBean.getSession();
      int result = mapper.selectOne("Mproduct.count");
      mapper.close();
      return result;
}
}