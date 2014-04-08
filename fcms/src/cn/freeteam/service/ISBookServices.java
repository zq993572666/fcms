package cn.freeteam.service;

import java.util.List;
import java.util.Map;

import cn.freeteam.base.BaseService;
import cn.freeteam.dao.ISBookMapper;


public class ISBookServices extends BaseService{
	private ISBookMapper iSBookMapper;
	public ISBookServices(){
		initMapper("iSBookMapper");
	}
	public List<Map> pageTest(Map map) {
		// TODO Auto-generated method stub
		return iSBookMapper.pageTest(map);
	}

	public int pageCount(Map map) {
		// TODO Auto-generated method stub
		return iSBookMapper.pageCount(map);
	}
	public ISBookMapper getiSBookMapper() {
		return iSBookMapper;
	}
	public void setiSBookMapper(ISBookMapper iSBookMapper) {
		this.iSBookMapper = iSBookMapper;
	}

}
