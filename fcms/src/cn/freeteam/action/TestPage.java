package cn.freeteam.action;

import java.util.List;
import java.util.Map;

import cn.freeteam.base.BaseAction;
import cn.freeteam.model.Users;
import cn.freeteam.service.UserService;

public class TestPage extends BaseAction{
	private UserService userService;
	public TestPage(){
		init("userService");
	}
public String test(){
	List<Map<String, String>> users=userService.findPage();
	return "test";
}
public UserService getUserService() {
	return userService;
}
public void setUserService(UserService userService) {
	this.userService = userService;
}

}
