package kr.co.ethree.dev.user.main.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import kr.co.ethree.dev.common.base.BaseAbstractDAO;
import kr.co.ethree.dev.common.model.ListHelperVO;

@Repository("mainDAO")
@SuppressWarnings("rawtypes")
public class MainDAO extends BaseAbstractDAO{
	
	public ListHelperVO getMainDataListVO(ListHelperVO listHelperVO) throws Exception {
		return getListHelperVO("userMainMapper.totalcount", "userMainMapper.selectMainList", listHelperVO);
	}

}
