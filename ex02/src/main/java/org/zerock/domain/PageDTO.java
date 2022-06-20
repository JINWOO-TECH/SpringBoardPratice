package org.zerock.domain;

import lombok.Data;

@Data
public class PageDTO {
	//페이지바 이전가기, 이후가기, 시작값, 끝값
	private boolean prev,next;
	private int startPage;
	private int endPage;
	
	private Long total; //전체 개수
	private Criteria cri; //몇개씩 보여줄지, 현재페이지
	
	public PageDTO(Criteria cri, Long total) {
		this.cri = cri;
		this.total = total;
		
		this.endPage = (int) Math.ceil(cri.getPageNum()/10.0) *10;
		this.startPage = endPage-9;
		
		this.prev = startPage != 1;
		
		//진짜 마지막 페이지바 번호 = 올림(전체글개수/한페이지보여줄 개수)
		int realEnd = (int) Math.ceil((total*1.0/cri.getAmount()));
		
		if(this.endPage>realEnd) { //마지막 페이지바 번호가 실제페이지바 번호보다 크다면
			this.endPage=realEnd;
		}
		
		this.next = this.endPage < realEnd;
	}
	
}
