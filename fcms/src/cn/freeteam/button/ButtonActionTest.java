package cn.freeteam.button;

import com.opensymphony.xwork2.ActionSupport;

public class ButtonActionTest extends ActionSupport {  
    private static final long serialVersionUID = 1L;  
      
    public String[] getFruits(){  
        return new String[]{ "apple", "apple", "apple"};  
    }  
  public String execute(){
	  return "success";
  }
  public String add(){
	  return "add";
  }

} 