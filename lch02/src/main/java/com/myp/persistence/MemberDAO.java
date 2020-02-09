package com.myp.persistence;

import com.myp.domain.Member;


public interface MemberDAO {
	
	public void membermain(Member member)throws Exception;
	public Member login(Member member) throws Exception;
	

}
