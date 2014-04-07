package cn.freeteam.action;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import cn.freeteam.base.BaseAction;
import cn.freeteam.service.ISBookServices;
import cn.freeteam.util.page.PageInfo;


public class PageTest  extends BaseAction {
	private ISBookServices iSBookServices;
	private PageInfo pageInfo=new PageInfo();
	public PageTest() {
		init("iSBookServices");
	}
	public String page(){
		Map map=new HashMap();
		map.put("start", pageInfo.getOffset());
		map.put("pageSize",pageInfo.getPageSize());
		ISBookServices aservices=iSBookServices;
		pageInfo.setCount(iSBookServices.pageCount(map));
		List func=(List) iSBookServices.pageTest(map);
		
		return "success";
	}
	public PageInfo getPageInfo() {
		return pageInfo;
	}
	public void setPageInfo(PageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}
	public ISBookServices getiSBookServices() {
		return iSBookServices;
	}
	public void setiSBookServices(ISBookServices iSBookServices) {
		this.iSBookServices = iSBookServices;
	}
	
}
