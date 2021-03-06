package com.myp.persistence;

import java.util.List;

import com.myp.domain.BoardVO;
import com.myp.domain.Criteria;

public interface BoardDAO {
public void create(BoardVO vo) throws Exception;

	

	public BoardVO read(Integer bno) throws Exception;

	

	public void update(BoardVO vo) throws Exception;

	

	public void delete(Integer bno) throws Exception;

	void updateViewCnt(Integer bno) throws Exception;

	public List<BoardVO> listAll() throws Exception;
	
	public int countPaging(Criteria cri) throws Exception;
	
	public List<BoardDAO> listPage(int page) throws Exception;
	
	public List<BoardDAO> listCriteria(Criteria cri) throws Exception;
	
	
	 
	 
	
  
    

}
