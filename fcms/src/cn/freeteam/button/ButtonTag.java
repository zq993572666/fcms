package cn.freeteam.button;


import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
  
import org.apache.struts2.components.Component;  
import org.apache.struts2.views.jsp.ComponentTagSupport;  
  
import com.opensymphony.xwork2.util.ValueStack;  
  
public class ButtonTag extends ComponentTagSupport {  
    private static final long serialVersionUID = 1L;  
      
    private String items;  
  
    public String getItems() {  
        return items;  
    }  
  
  
    public void setItems(String items) {  
        this.items = items;  
    }  
  
    /** 
     * getBean 在类ComponentTagSupport中为抽象，子类必须实现 
     */  
    @Override  
    public Component getBean(ValueStack valueStack, HttpServletRequest request, HttpServletResponse response) {  
        return new ButtonService( valueStack );  
    }  
  
  
    @Override  
    protected void populateParams() {  
        super.populateParams();  
          
        ButtonService buttonService = (ButtonService) getComponent();  
        buttonService.setItems( getItems() );  
    }  
}  