package sample.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import jdbc.util.OracleUtility;
import sample.dto.MemberDto;

//DAO에는 입력과 출력은 포함시키지 않는다. 오직 어떤 형식의 데이터를 받아서
//어떤 SQL을 실행하여 어떤 값을 리턴할 것인가를 중점을 두고 정의하면 된다.
//DTO는 데이터를 저장하는 목적의 클래스, DAO는 어떤 동작을 할 것인지를 정의한 메소드만 있다.
public class MemberDao {
	//insert, select, update
	//싱글톤으로 만들어 보기
	
	private static MemberDao dao = new MemberDao();
	private MemberDao() {}
	public static MemberDao getMemberDao() {	//메소드 이름은 getInstance 외에 내용을 알 수 있는 이름으로 정하기
		return dao;
	}
	
	//나. 회원 등록
	public int insert(MemberDto member) throws SQLException {
		Connection conn = OracleUtility.getConnection();
		String sql = "INSERT INTO MEMBER_TBL_02 VALUES (seq.nextval,?,?,?,sysdate,?,?)";
		PreparedStatement ps = conn.prepareStatement(sql);		
		ps.setString(1, member.getCustname());
		ps.setString(2, member.getPhone());
		ps.setString(3, member.getAddress());	
		ps.setString(4, member.getGrade());
		ps.setString(5, member.getCity());
		int result = ps.executeUpdate();
		
		ps.close();
		conn.close();
		return result;	
	}
	
	//다. 회원목록조회
	public List<MemberDto> selectAll() throws SQLException{
		Connection conn = OracleUtility.getConnection();
		String sql = "select * from member_tbl_02";
		PreparedStatement ps = conn.prepareStatement(sql);
		List<MemberDto> results = new ArrayList<>();
		ResultSet rs = ps.executeQuery();
		while(rs.next()) {
			MemberDto dto = new MemberDto(rs.getInt(1),
						       rs.getString(2),
						       rs.getString(3), 
						       rs.getString(4),
						       rs.getDate(5),
						       rs.getString(6),
						       rs.getString(7));
			results.add(dto);
			
		}		
		return results;
		
	}	
	
	//마. 회원정보수정
	public int update(MemberDto member) throws SQLException {
		Connection conn = OracleUtility.getConnection();
		String sql = "update MEMBER_TBL_02 \r\n"
				+ "set phone = ?, address = ?, city = ?\r\n"
				+ "where custno = ? ";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, member.getPhone());
		ps.setString(2, member.getAddress());
		ps.setString(3, member.getCity());
		ps.setInt(4, member.getCustno());
		int result = ps.executeUpdate();
		
		ps.close();
		conn.close();
		
		return result;	
		
	}

}