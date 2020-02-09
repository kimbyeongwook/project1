package com.myp.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.myp.domain.Member;
@Repository
public class MemberDAOImpl implements MemberDAO {

	@Inject
	private SqlSession session;
	
	
	private String namespace="com.myp.mapper.BoardMapper";
	@Override
	public void membermain(Member member) throws Exception {
		// TODO Auto-generated method stub
		session.insert(namespace+".membermain",member);
		
		
	}
	@Override
	public Member login(Member member) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".login",member);
		
		
	}
	

}
