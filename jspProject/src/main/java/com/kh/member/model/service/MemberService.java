package com.kh.member.model.service;

import java.sql.Connection;

import static com.kh.common.JDBCTemplate.*;
import com.kh.member.model.dao.MemberDao;
import com.kh.member.model.vo.Member;

public class MemberService {
	public Member loginMember(String id, String pwd) {
		// Connection 객체를 생성하여 Dao에게 전달
		Connection conn = getConnection();
		
		// Dao 객체에게 DB에 아이디, 비밀번호에 해당하는 데이터가 있는지 확인 요청
		Member m = new MemberDao().loginMember(conn, id, pwd);
		
		// Connection 객체 반납(close)
		close(conn);
		
		return m;
	}
	
	public int insertMember(Member member) {
		boolean bflag = false;
				
		// Connection 객체를 생성하여 Dao에게 전달
		Connection conn = getConnection();
		
		// Dao 객체에게 DB에 아이디, 비밀번호에 해당하는 데이터가 있는지 확인 요청
		int result = new MemberDao().insertMember(conn, member);
		
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		// Connection 객체 반납(close)
		close(conn);
		
		return result;
	}
	
	public int duplicateUserId(String userId) {
		int result = 0;
		
		Connection conn = getConnection();
		
		result = new MemberDao().duplicateUserId(conn, userId);
		
		close(conn);
		
		return result;
	}
	
	public Member UpdateMember(Member member) {
		int result = 0;
		Member updateMem = null;
		
		Connection conn = getConnection();
		
		result = new MemberDao().UpdateMember(conn, member);
		
		if(result > 0) {
			commit(conn);
			
			updateMem = new MemberDao().selectMember(conn, member.getUserId());
		} else {
			rollback(conn);
		}
		
		close(conn);
		
		return updateMem;
	}
	
	public Member updatePassword(String currentPwd, String newPwd, String userId) {
		Member member = null;
		
		Connection conn = getConnection();
		
		int result = new MemberDao().updatePassword(conn, currentPwd, newPwd, userId);
		
		if(result > 0) {
			commit(conn);
			
			member = new MemberDao().selectMember(conn, userId);
		} else {
			rollback(conn);
		}
		
		close(conn);
		
		return member;
	}
	
	public int deleteMember(String userId, String userPwd) {
		int result = 0;
		
		Connection conn = getConnection();
		
		result = new MemberDao().deleteMember(conn, userId, userPwd);
		
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}
}
