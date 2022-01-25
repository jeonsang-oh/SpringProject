package com.spring.lotto.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.lotto.dao.BoardDao;
import com.spring.lotto.model.BoardVO;
import com.spring.lotto.service.BoardService;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardDao boardDao;
	
	@Override
	public String getDate() throws Exception {
		return boardDao.getDate();
	}
	
	@Override
	public List<BoardVO> getNumber(BoardVO boardVO) throws Exception {
		return boardDao.getNumber(boardVO);
	}
}
