package kr.co.ethree.dev.user.main.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.ethree.dev.common.base.BaseAbstractServiceImpl;
import kr.co.ethree.dev.common.model.ListHelperVO;
import kr.co.ethree.dev.user.main.dao.MainDAO;


@Service("MainService")
@SuppressWarnings("rawtypes")
public class MainServiceImpl extends BaseAbstractServiceImpl implements MainService {
	@Autowired MainDAO mainDao;
	
	@Override
	public ListHelperVO getMainDataListVO(ListHelperVO listHelperVO) throws Exception {
		return mainDao.getMainDataListVO(listHelperVO);
	}

}
