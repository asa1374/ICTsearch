package kr.co.ethree.dev.user.board.service;

import java.util.List;
import java.util.Map;

import kr.co.ethree.dev.common.model.ListHelperVO;

@SuppressWarnings({ "rawtypes" })
public interface BoardService {
	public ListHelperVO getBoardDataListVO(ListHelperVO listHelperVO) throws Exception;
	public ListHelperVO getUserListVO(ListHelperVO listHelperVO) throws Exception;
	public List selectBoardNoticeList() throws Exception;
	public Map selectBoardOne(Map paramMap) throws Exception;
	public List selectSubDataList(Map paramMap) throws Exception;
	public int totalcount() throws Exception;
	// 다음글의 순서를 위해 count로 갯수를 확인함.
	public int layercount(Map paramMap) throws Exception;
	public int ordcount(Map paramMap) throws Exception;
	
	public void insertBoard(Map paramMap) throws Exception;
	public void updateBoard(Map paramMap) throws Exception;
	public void updateBoardOrd() throws Exception;
	public void deleteBoard(Map paramMap) throws Exception;
	
}
