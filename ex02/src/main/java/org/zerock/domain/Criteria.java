package org.zerock.domain;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class Criteria {
	//페이지 번호, 한 페이지 당 개수
	private int pageNum=1;
	private int amount=10;
	
	//기본생성자
	public Criteria() {

	}
	
	//추가 생성자 -> 값을 넣어서 만들기


}
