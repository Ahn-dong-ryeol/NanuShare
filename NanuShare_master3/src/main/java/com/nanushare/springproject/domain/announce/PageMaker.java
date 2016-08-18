package com.nanushare.springproject.domain.announce;

public class PageMaker {

	private int totalCount; // 총 게시물 수
	private int startPage; // 첫번째 페이지 번호(1, 11, 21...)
	private int endPage; // 마지막 페이지 번호(10, 20, 30...)
	private boolean prev; // 이전 페이지 존재 여부
	private boolean next; // 다음 페이지 존재 여부
	
	private int displayPageNum = 10; //페이지 당 보여지는 글 수
	
	private Criteria cri;
	
	public void setTotalCount(int totalCount){
		this.totalCount = totalCount;
		
		calcData();
	}
	
	private void calcData(){
		endPage = (int)(Math.ceil(cri.getPage()/(double)displayPageNum)*displayPageNum);
		
		startPage = (endPage - displayPageNum)+1;
		
		int tempEndPage = (int)(Math.ceil(totalCount/(double)cri.getPerPageNum()));
		
		if(endPage>tempEndPage){
			endPage = tempEndPage;
		}
		
		prev = startPage==1?false:true;
		next = endPage*cri.getPerPageNum()>=totalCount ? false : true;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public boolean isPrev() {
		return prev;
	}

	public void setPrev(boolean prev) {
		this.prev = prev;
	}

	public boolean isNext() {
		return next;
	}

	public void setNext(boolean next) {
		this.next = next;
	}

	public int getDisplayPageNum() {
		return displayPageNum;
	}

	public void setDisplayPageNum(int displayPageNum) {
		this.displayPageNum = displayPageNum;
	}

	public Criteria getCri() {
		return cri;
	}

	public void setCri(Criteria cri) {
		this.cri = cri;
	}

	public int getTotalCount() {
		return totalCount;
	}

	@Override
	public String toString() {
		return "PageMaker [totalCount=" + totalCount + ", startPage=" + startPage + ", endPage=" + endPage + ", prev="
				+ prev + ", next=" + next + ", displayPageNum=" + displayPageNum + ", cri=" + cri + "]";
	}
}
