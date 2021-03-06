package cn.freeteam.cms.model;

import java.io.Serializable;
import java.util.Date;

public class Question implements Serializable{
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column freecms_question.id
     *
     * @mbggenerated Tue Jan 22 13:10:46 CST 2013
     */
    private String id;
    private int selectnum;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column freecms_question.name
     *
     * @mbggenerated Tue Jan 22 13:10:46 CST 2013
     */
    private String name;
    private String detail;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column freecms_question.selecttype
     *
     * @mbggenerated Tue Jan 22 13:10:46 CST 2013
     */
    private String selecttype;
    private String selecttypeStr;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column freecms_question.isok
     *
     * @mbggenerated Tue Jan 22 13:10:46 CST 2013
     */
    private String isok;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column freecms_question.siteid
     *
     * @mbggenerated Tue Jan 22 13:10:46 CST 2013
     */
    private String siteid;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column freecms_question.adduser
     *
     * @mbggenerated Tue Jan 22 13:10:46 CST 2013
     */
    private String adduser;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column freecms_question.addtime
     *
     * @mbggenerated Tue Jan 22 13:10:46 CST 2013
     */
    private Date addtime;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column freecms_question.id
     *
     * @return the value of freecms_question.id
     *
     * @mbggenerated Tue Jan 22 13:10:46 CST 2013
     */
    public String getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column freecms_question.id
     *
     * @param id the value for freecms_question.id
     *
     * @mbggenerated Tue Jan 22 13:10:46 CST 2013
     */
    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column freecms_question.name
     *
     * @return the value of freecms_question.name
     *
     * @mbggenerated Tue Jan 22 13:10:46 CST 2013
     */
    public String getName() {
        return name;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column freecms_question.name
     *
     * @param name the value for freecms_question.name
     *
     * @mbggenerated Tue Jan 22 13:10:46 CST 2013
     */
    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column freecms_question.selecttype
     *
     * @return the value of freecms_question.selecttype
     *
     * @mbggenerated Tue Jan 22 13:10:46 CST 2013
     */
    public String getSelecttype() {
        return selecttype;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column freecms_question.selecttype
     *
     * @param selecttype the value for freecms_question.selecttype
     *
     * @mbggenerated Tue Jan 22 13:10:46 CST 2013
     */
    public void setSelecttype(String selecttype) {
        this.selecttype = selecttype == null ? null : selecttype.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column freecms_question.isok
     *
     * @return the value of freecms_question.isok
     *
     * @mbggenerated Tue Jan 22 13:10:46 CST 2013
     */
    public String getIsok() {
        return isok;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column freecms_question.isok
     *
     * @param isok the value for freecms_question.isok
     *
     * @mbggenerated Tue Jan 22 13:10:46 CST 2013
     */
    public void setIsok(String isok) {
        this.isok = isok == null ? null : isok.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column freecms_question.siteid
     *
     * @return the value of freecms_question.siteid
     *
     * @mbggenerated Tue Jan 22 13:10:46 CST 2013
     */
    public String getSiteid() {
        return siteid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column freecms_question.siteid
     *
     * @param siteid the value for freecms_question.siteid
     *
     * @mbggenerated Tue Jan 22 13:10:46 CST 2013
     */
    public void setSiteid(String siteid) {
        this.siteid = siteid == null ? null : siteid.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column freecms_question.adduser
     *
     * @return the value of freecms_question.adduser
     *
     * @mbggenerated Tue Jan 22 13:10:46 CST 2013
     */
    public String getAdduser() {
        return adduser;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column freecms_question.adduser
     *
     * @param adduser the value for freecms_question.adduser
     *
     * @mbggenerated Tue Jan 22 13:10:46 CST 2013
     */
    public void setAdduser(String adduser) {
        this.adduser = adduser == null ? null : adduser.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column freecms_question.addtime
     *
     * @return the value of freecms_question.addtime
     *
     * @mbggenerated Tue Jan 22 13:10:46 CST 2013
     */
    public Date getAddtime() {
        return addtime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column freecms_question.addtime
     *
     * @param addtime the value for freecms_question.addtime
     *
     * @mbggenerated Tue Jan 22 13:10:46 CST 2013
     */
    public void setAddtime(Date addtime) {
        this.addtime = addtime;
    }

	public int getSelectnum() {
		if (selectnum==0) {
			selectnum=1;
		}
		return selectnum;
	}

	public void setSelectnum(int selectnum) {
		this.selectnum = selectnum;
	}

	public String getSelecttypeStr() {
		if ("1".equals(selecttype)) {
			selecttypeStr="checkbox";
		}else {
			selecttypeStr="radio";
		}
		return selecttypeStr;
	}

	public void setSelecttypeStr(String selecttypeStr) {
		this.selecttypeStr = selecttypeStr;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}
}