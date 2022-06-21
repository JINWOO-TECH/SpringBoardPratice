package org.zerock.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;

import lombok.extern.log4j.Log4j;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class BoardServiceTest {
	
	@Autowired
	private BoardService service;
	
	//목록
	@Test
	public void testGetList() {
//		log.info(service.getList());
		Criteria cri = new Criteria();
		service.getList(cri).forEach(vo -> log.info(vo));
	}

	//글등록
	@Test
	public void testRegister() {
		BoardVO vo =new BoardVO();
		vo.setTitle("난제목");
		vo.setContent("난내용");
		vo.setWriter("user05");
		service.register(vo);
	}
	//글삭제
	@Test
	public void testRemove() {
		if(service.remove(16L))
			log.info("삭제성공!!!");
		else
			log.info("삭제실패!!");
			
	}
	
	//글수정
	@Test
	public void testModify() {
		BoardVO vo = new BoardVO();
		vo.setTitle("바꾼제목");
		vo.setContent("바꾼내용");
		vo.setWriter("바꾼작성자");
		vo.setBno(17L);
		if(service.modify(vo))
			log.info("수정성공");
		else
			log.info("수정실패");
	}
	//글상세보기
	@Test
	public void testGet() {
		log.info(service.get(17L));
	}
	
	@Test
	public void testGetCount() {
		Criteria cri = new Criteria();
		log.info(service.count(cri));
	}
	
}
