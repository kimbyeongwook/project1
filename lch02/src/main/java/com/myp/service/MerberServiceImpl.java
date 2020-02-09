package com.myp.service;

import javax.inject.Inject;

import org.springframework.dao.support.DaoSupport;
import org.springframework.stereotype.Service;

import com.myp.domain.Member;
import com.myp.persistence.MemberDAO;
@Service
public class MerberServiceImpl implements MerberService{
	
	@Inject

	private MemberDAO memberdao;
	
	@Override
	public void membermain(Member member) throws Exception {
		
		

           memberdao.membermain(member);
		
		
		// TODO Auto-generated method stub
		
	}
	

	@Override
	public Member login(Member member) throws Exception {
		// TODO Auto-generated method stub
		
		 return memberdao.login(member);
		 
		
	}


	

}
