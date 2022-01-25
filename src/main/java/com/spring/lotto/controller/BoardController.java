package com.spring.lotto.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.spring.lotto.model.BoardVO;
import com.spring.lotto.service.BoardService;

@Controller
public class BoardController {

	@Autowired
	private BoardService boardService;
	
	
	@RequestMapping(value="/board", method = RequestMethod.GET)
	public ModelAndView Board() throws Exception {
		return new ModelAndView("lotto/board");
	}
	
	@RequestMapping(value="/getBoard", method = RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> getBoard(BoardVO boardVO) throws Exception {
		Map<String,Object> resultObj = new HashMap<String,Object>();
		
		System.out.println("±¸¸Å È½¼ö = " + boardVO.getBuyLine());
		List<BoardVO> numList = boardService.getNumber(boardVO);
		resultObj.put("lists", numList);
		
		return resultObj;
	}

}
