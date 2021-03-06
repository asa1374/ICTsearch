package kr.co.ethree.dev.user.board.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.ethree.dev.common.base.BaseAbstractServiceImpl;
import kr.co.ethree.dev.common.model.ListHelperVO;
import kr.co.ethree.dev.user.board.dao.BoardDAO;

@Service("boardService")
@SuppressWarnings("rawtypes")
public class BoardServiceImpl extends BaseAbstractServiceImpl implements BoardService {
	@Autowired BoardDAO boardDao;
	
	@Override
	public ListHelperVO getBoardDataListVO(ListHelperVO listHelperVO) throws Exception {
		return boardDao.getBoardDataListVO(listHelperVO);
	}

	@Override
	public Map selectBoardOne(Map paramMap) throws Exception {
		return boardDao.selectBoardOne(paramMap);
	}

	@SuppressWarnings("unused")
	@Override
	public List selectSubDataList(Map paramMap) throws Exception {
		return boardDao.selectSubDataList(paramMap);
	}
	
	@Override
	public List selectBoardNoticeList() throws Exception {
		return boardDao.selectBoardNoticeList();
	}

	@Override
	public void insertBoard(Map paramMap) throws Exception {
		boardDao.insertBoard(paramMap);
	}

	@Override
	public void updateBoard(Map paramMap) throws Exception {
		boardDao.updateBoard(paramMap);
	}

	@Override
	public void deleteBoard(Map paramMap) throws Exception {
		boardDao.deleteBoard(paramMap);
	}

	@Override
	public int totalcount() throws Exception {
		return boardDao.totalcount();
	}

	@Override
	public ListHelperVO getUserListVO(ListHelperVO listHelperVO) throws Exception {
		return boardDao.getUserListVO(listHelperVO);
	}

	@Override
	public void updateBoardOrd() throws Exception {
		boardDao.updateBoardOrd();
	}

	@Override
	public int layercount(Map paramMap) throws Exception {
		return boardDao.layercount(paramMap);
	}

	@Override
	public int ordcount(Map paramMap) throws Exception {
		return boardDao.ordcount(paramMap);
	}

}
