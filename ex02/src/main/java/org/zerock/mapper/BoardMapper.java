package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;
import org.zerock.domain.UserCountVO;

public interface BoardMapper {
	
//	@Select("select * from tbl_board where bno>0")
	public List<BoardVO> getList(); //목록보기
	
	//목록보기(페이지 처리)
	public List<BoardVO> getListWithPaging(Criteria cri); 
	
	//글 등록 -cf> 등록, 삭제, 수정일 경우 리턴이 int이면 처리된 글의 개수가 반납된다.
	public void insert(BoardVO vo);
	
	//글상세보기
	public BoardVO read(Long bno);
	
	//글 수정
	public int update(BoardVO vo);
	
	//글 삭제
	public int delete(Long bno);
	
	//글 등록(등록된 글번호를 알아야하는 경우 즉, pk값을 알아야 하는 경우)
	public void insertSelectKey(BoardVO vo);
	
	//글 랭킹
	public List<UserCountVO> getRankList(); //목록보기
	
	public Long countduplicated();
	
	
	//----------------------------------------------------
	//임의 추가 - 글목록 개수
	public Long getCount(Criteria cri);
	
	//임의추가 - 특정 작성글 개수
	public Long count(BoardVO vo);
	
	//퀴즈  - 유저별 작성글 갯수
	public List<UserCountVO> quiz1();
	
	//퀴즈2 -제목, 작성자만 뽑아낸다(중복 제거)
	public List<BoardVO> quiz2();
	
}
