package com.myp.service;



import java.util.List;



import com.myp.domain.BoardVO;
import com.myp.domain.Criteria;
import com.myp.persistence.BoardDAO;



public interface BoardService {

	  public void regist(BoardVO board) throws Exception;



	  public BoardVO read(Integer bno) throws Exception;



	  public void modify(BoardVO board) throws Exception;



	  public void remove(Integer bno) throws Exception;



	  public List<BoardVO> listAll() throws Exception;
	
	  
	  public int listCountCriteria(Criteria cri) throws Exception; // ����¡ ����
	  
	  public List<BoardDAO> listCriteria(Criteria cri) throws Exception; //DB�� ������ 
	  // ī������ ���� �޼ҵ�
	  
	  
		 
		



	
}