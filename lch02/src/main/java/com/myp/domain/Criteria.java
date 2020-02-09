package com.myp.domain;

//페이징 기준 클래스
public class Criteria {
	public Criteria() {
		
		
		
		this.page = 1;
		
		this.perPageNum = 10;  // 한페이지에 10개
		
	}
	
	
	
	private int page;
	public int getPage() {
		
		return page;
	}
	public void setPage(int page) {
		
	
		if(page<=0) {
		this.page = 1;
		return;
		
	}
	   this.page=page;	
	}

	
	public int getPerPageNum() {
		return perPageNum;
	}
	public void setPerPageNum(int perPageNum) {
		if(perPageNum <=0 || perPageNum > 100) {
			
			this.perPageNum=10;
			return;
			
			
		}
		
		this.perPageNum = perPageNum;
	}
	private int perPageNum;
	 public int getPageStart() {



		    return (this.page - 1) * perPageNum;  

		  }
	

}
