package com.spring.lotto.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.lotto.dao.BoardDao;
import com.spring.lotto.model.BoardVO;

@Repository
public class BoardDaoImpl implements BoardDao {
	
	@Autowired 
	private SqlSession sqlSession; 
	
	private static final String NAMESPACE = "com.spring.lotto.dao.BoardDao.";
	
	@Override
	public String getDate() throws Exception {
		return sqlSession.selectOne(NAMESPACE + "selectDate");
	}
	
	
	@Override
	public List<BoardVO> getNumber(BoardVO boardVO) throws Exception {
		return sqlSession.selectList(NAMESPACE + "selectNumberList", boardVO);
	}
}
