package cn.freeteam.button;

import java.io.IOException;  
import java.io.Writer;  
  
import org.apache.struts2.components.Component;  
  
import com.opensymphony.xwork2.util.ValueStack;  
  
public class ButtonService extends Component {  
    private String items;  
      
    public String getItems() {  
        return items;  
    }  
  
  
    public void setItems(String items) {  
        this.items = items;  
    }  
  
  
    /** 
     * Component 没有默认构造器，子类必须指明构造器 
     *  
     * @param valueStack 
     */  
    public ButtonService(ValueStack valueStack) {  
        super(valueStack);  
    }  
  
  
    @Override  
    public boolean start(Writer writer) {  
        String[] itemValues = getItemValues();  
          
        //如下操作，仅仅显示出itemValues 的button  
        StringBuilder sb = new StringBuilder();  
        for( String value : itemValues ){  
            sb.append( "<input type=\"button\" name=\"" + value + "\" value=\"" + value + "\">" );  
        }  
        try {  
            writer.write( sb.toString() );  
        } catch (IOException e) {  
            throw new RuntimeException( "Construct <tangs:button /> error" );  
        }  
          
        return super.start(writer);  
    }  
      
    private String[] getItemValues( ){  
        if( items == null || items.trim().equals( "" ) ){  
            return new String[]{};  
        }  
          
        // 直接给属性items 赋值, <tangs:button items="apple,orange,banana"/>  
        if( items.contains( "," ) ){ //假设必须是多个  
            return items.split( "," );  
        }  
        // 通过JSP运行获取值,<tangs:button items="fruits"/>  
        else{  
            return (String[])this.getStack().findValue( items ); //这样写，只支持struts2 的ongl语法  
        }  
          
    }  
      
}  