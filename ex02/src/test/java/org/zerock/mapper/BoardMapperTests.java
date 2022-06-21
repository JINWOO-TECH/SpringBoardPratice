package org.zerock.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;
import org.zerock.domain.UserCountVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class BoardMapperTests {
	
	@Autowired
	private BoardMapper mapper;
	
	@Test
	public void testGetList() {
		List<BoardVO> list = mapper.getList();
//		log.info(list);
//		log.info(mapper.getList());
		
//		for(BoardVO vo : list) {
//			log.info(vo);
//		}		
		//람다식
		list.forEach(vo -> log.info(vo));
	}
	
	@Test
	public void testGetListWithPaging() {
		Criteria cri = new Criteria();
		cri.setKeyword("a");
		cri.setType("TW");
		mapper.getListWithPaging(cri).forEach(vo -> log.info(vo));
	}
	
	@Test
	public void testGetRankList() {
		List<UserCountVO> list = mapper.getRankList();
		for(UserCountVO usercount : list) {
			log.info(usercount);
		}
	}
	
	@Test
	public void testCountduplicated() {
		Long count = mapper.countduplicated();
		log.info(count);

	}
	
	@Test
	public void testInsert() {
		BoardVO vo = new BoardVO();
		vo.setTitle("난제목");
		vo.setContent("난내용");
		vo.setWriter("user03");
		mapper.insert(vo);
	}
	
	@Test
	public void testRead() {
		log.info(mapper.read(1L));
	}
	
	@Test
	public void testDelete() {
		log.info("삭제된 글의 개수는:"+ mapper.delete(1L));
	}
	
	@Test
	public void testUpdate() {
		BoardVO vo = new BoardVO();
		vo.setTitle("바꾼제목");
		vo.setContent("바꾼내용");
		vo.setWriter("바꾼작성자");
		vo.setBno(2L);
		
		log.info("수정된 글의 개수는 : "+mapper.update(vo));
	}
	
	@Test
	public void testInsertSelectKey() {
		BoardVO vo = new BoardVO();
		vo.setTitle("난제목");
		vo.setContent("난내용");
		vo.setWriter("user03");
		mapper.insertSelectKey(vo);
		log.info("등록된 글번호는 : "+vo.getBno());
	}
	
	//------------------------------------------------------------------------------------------------
	
	@Test
	public void testGetCount() {
		Criteria cri = new Criteria();
		//1.전체글 개수 확인
		log.info("글 개수는"+mapper.getCount(cri));
		//2.검색글 개수 확인
		cri.setKeyword("a");
		cri.setType("TW");
		log.info("글 개수는"+mapper.getCount(cri));
	}
	
	@Test
	public void testCount() {
		BoardVO vo = new BoardVO();
		vo.setWriter("user00");
		log.info("유저 글 개수는"+mapper.count(vo));
	}
	
	@Test
	public void test1() {
		log.info(mapper.quiz1());
	}
	
	@Test
	public void test2() {
//		log.info(mapper.quiz2());
		for(BoardVO vo : mapper.quiz2() ) {
			log.info(vo.getTitle()+"  "+vo.getWriter());
		}
	}
}
