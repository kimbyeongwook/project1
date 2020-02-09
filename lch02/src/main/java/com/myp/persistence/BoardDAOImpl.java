package com.myp.persistence;



import java.util.HashMap;
import java.util.List;



import javax.inject.Inject;



import org.apache.ibatis.session.SqlSession;

import org.springframework.stereotype.Repository;



import com.myp.domain.BoardVO;
import com.myp.domain.Criteria;





@Repository

public class BoardDAOImpl  implements BoardDAO {



	@Inject

	private SqlSession session;

	

	private static String namespace = "com.myp.mapper.BoardMapper";

	

	@Override

	public void create(BoardVO vo) throws Exception {

		session.insert(namespace+".create", vo);

	}



	@Override

	public BoardVO read(Integer bno) throws Exception {

		return session.selectOne(namespace + ".read", bno);

	

	}



	@Override

	public void update(BoardVO vo) throws Exception {

		session.update(namespace+".update", vo);

	}



	@Override

	public void delete(Integer bno) throws Exception {

		session.delete(namespace+".delete", bno);

	}



	@Override

	public List<BoardVO> listAll() throws Exception {
		
		

		
		return session.selectList(namespace + ".listAll");
		
	}
	public void updateViewCnt(Integer bno) throws Exception{
		session.update(namespace+".updateViewCnt",bno);
	}



	@Override
	public int countPaging(Criteria cri) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".countPaging", cri);
		
		
	}



	@Override
	public List<BoardDAO> listPage(int page) throws Exception {
		// TODO Auto-generated method stub
		
		if(page <=0) {
			page = 1;
			
		}
		page = (page -1) * 10;
		
		return session.selectList(namespace+".listPage",page);
		
	}



	@Override
	public List<BoardDAO> listCriteria(Criteria cri) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".listCriteria",cri);
		
	}



	






}