package com.spring.lotto.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import com.spring.lotto.model.BoardVO;

@Service
public interface BoardDao {

	public String getDate() throws Exception;

	public List<BoardVO> getNumber(BoardVO boardVO) throws Exception;

}
