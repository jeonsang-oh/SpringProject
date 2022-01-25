package com.spring.lotto.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.spring.lotto.model.BoardVO;

@Service
public interface BoardService {

	String getDate() throws Exception;

	List<BoardVO> getNumber(BoardVO boardVO) throws Exception;

}
