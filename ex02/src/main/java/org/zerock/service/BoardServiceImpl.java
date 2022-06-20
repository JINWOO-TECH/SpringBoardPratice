package org.zerock.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;
import org.zerock.domain.UserCountVO;
import org.zerock.mapper.BoardMapper;

import lombok.AllArgsConstructor;

@AllArgsConstructor //생성자
@Service
public class BoardServiceImpl implements BoardService {
	
	private BoardMapper mapper;
	
	@Override
	public void register(BoardVO vo) {
//		mapper.insert(vo);
		mapper.insertSelectKey(vo); //글등록시 글번호 알기

	}

	@Override
	public BoardVO get(Long bno) {
		return mapper.read(bno);
	}

	@Override
	public boolean modify(BoardVO vo) {
		int temp = mapper.update(vo);
		if(temp==1)
			return true;
		else
			return false;
	}

	@Override
	public boolean remove(Long bno) {
//		boolean temp =mapper.delete(bno)==1 ? true:false;
//		return temp;
		return mapper.delete(bno)==1;
	}

	@Override
	public List<BoardVO> getList(Criteria cri) {
		return mapper.getListWithPaging(cri);
	}

	@Override
	public Long count() {
		return mapper.getCount();
	}

	@Override
	public List<UserCountVO> ranking() {
		return mapper.getRankList();
	}

}
