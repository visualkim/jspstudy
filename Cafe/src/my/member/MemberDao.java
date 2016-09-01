package my.member;

import java.sql.*;

import my.util.*;

public class MemberDao {
	
	public int insertMember(MemberVo vo) {
		int rst = 0;
		Connection conn = null;
		PreparedStatement ps = null;
		
		try {
			conn = ConnUtil.getConnection();
			String sql = "insert into member values(null,?,?,?,?,?,?,?,?,?,?,?,?,?,?,sysdate())";
			ps = conn.prepareStatement(sql);
			ps.setString(1, vo.getId());
			ps.setString(2,  vo.getPass());
			ps.setString(3, vo.getName());
			ps.setString(4, vo.getEmail1());
			ps.setString(5, vo.getEmail2());
			ps.setString(6,  vo.getSent());
			ps.setInt(7,  vo.getPh1());
			ps.setInt(8, vo.getPh2());
			ps.setInt(9, vo.getPh3());
			ps.setString(10, vo.getGender());
			ps.setInt(11, vo.getBirth1());
			ps.setInt(12, vo.getBirth2());
			ps.setInt(13, vo.getBirth3());
			ps.setString(14, vo.getAddress());
			rst = ps.executeUpdate();			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ConnUtil.close(ps, conn);;
		}
		return rst;
		
	}

}
