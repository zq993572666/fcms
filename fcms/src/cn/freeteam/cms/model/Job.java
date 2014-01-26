package cn.freeteam.cms.model;

import java.util.Date;

import cn.freeteam.util.DateUtil;

public class Job {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column freecms_job.id
     *
     * @mbggenerated Sat Jul 06 16:55:27 CST 2013
     */
    private String id;
    private String siteid;
    private String isend;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column freecms_job.name
     *
     * @mbggenerated Sat Jul 06 16:55:27 CST 2013
     */
    private String name;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column freecms_job.unitname
     *
     * @mbggenerated Sat Jul 06 16:55:27 CST 2013
     */
    private String unitname;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column freecms_job.address
     *
     * @mbggenerated Sat Jul 06 16:55:27 CST 2013
     */
    private String address;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column freecms_job.num
     *
     * @mbggenerated Sat Jul 06 16:55:27 CST 2013
     */
    private Integer num;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column freecms_job.duty
     *
     * @mbggenerated Sat Jul 06 16:55:27 CST 2013
     */
    private String duty;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column freecms_job.jobrequire
     *
     * @mbggenerated Sat Jul 06 16:55:27 CST 2013
     */
    private String jobrequire;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column freecms_job.addtime
     *
     * @mbggenerated Sat Jul 06 16:55:27 CST 2013
     */
    private Date addtime;
    private String addtimeStr;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column freecms_job.endtime
     *
     * @mbggenerated Sat Jul 06 16:55:27 CST 2013
     */
    private Date endtime;
    private String endtimeStr;

    public String getAddtimeStr() {
    	if (addtime!=null) {
			addtimeStr=DateUtil.format(addtime, "yyyy-MM-dd");
		}
		return addtimeStr;
	}

	public void setAddtimeStr(String addtimeStr) {
		this.addtimeStr = addtimeStr;
	}

	public String getEndtimeStr() {
		if (endtime!=null) {
			endtimeStr=DateUtil.format(endtime, "yyyy-MM-dd");
		}
		return endtimeStr;
	}

	public void setEndtimeStr(String endtimeStr) {
		this.endtimeStr = endtimeStr;
	}

	/**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column freecms_job.id
     *
     * @return the value of freecms_job.id
     *
     * @mbggenerated Sat Jul 06 16:55:27 CST 2013
     */
    public String getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column freecms_job.id
     *
     * @param id the value for freecms_job.id
     *
     * @mbggenerated Sat Jul 06 16:55:27 CST 2013
     */
    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column freecms_job.name
     *
     * @return the value of freecms_job.name
     *
     * @mbggenerated Sat Jul 06 16:55:27 CST 2013
     */
    public String getName() {
        return name;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column freecms_job.name
     *
     * @param name the value for freecms_job.name
     *
     * @mbggenerated Sat Jul 06 16:55:27 CST 2013
     */
    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column freecms_job.unitname
     *
     * @return the value of freecms_job.unitname
     *
     * @mbggenerated Sat Jul 06 16:55:27 CST 2013
     */
    public String getUnitname() {
        return unitname;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column freecms_job.unitname
     *
     * @param unitname the value for freecms_job.unitname
     *
     * @mbggenerated Sat Jul 06 16:55:27 CST 2013
     */
    public void setUnitname(String unitname) {
        this.unitname = unitname == null ? null : unitname.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column freecms_job.address
     *
     * @return the value of freecms_job.address
     *
     * @mbggenerated Sat Jul 06 16:55:27 CST 2013
     */
    public String getAddress() {
        return address;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column freecms_job.address
     *
     * @param address the value for freecms_job.address
     *
     * @mbggenerated Sat Jul 06 16:55:27 CST 2013
     */
    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column freecms_job.num
     *
     * @return the value of freecms_job.num
     *
     * @mbggenerated Sat Jul 06 16:55:27 CST 2013
     */
    public Integer getNum() {
        return num;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column freecms_job.num
     *
     * @param num the value for freecms_job.num
     *
     * @mbggenerated Sat Jul 06 16:55:27 CST 2013
     */
    public void setNum(Integer num) {
        this.num = num;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column freecms_job.duty
     *
     * @return the value of freecms_job.duty
     *
     * @mbggenerated Sat Jul 06 16:55:27 CST 2013
     */
    public String getDuty() {
        return duty;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column freecms_job.duty
     *
     * @param duty the value for freecms_job.duty
     *
     * @mbggenerated Sat Jul 06 16:55:27 CST 2013
     */
    public void setDuty(String duty) {
        this.duty = duty == null ? null : duty.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column freecms_job.jobrequire
     *
     * @return the value of freecms_job.jobrequire
     *
     * @mbggenerated Sat Jul 06 16:55:27 CST 2013
     */
    public String getJobrequire() {
        return jobrequire;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column freecms_job.jobrequire
     *
     * @param jobrequire the value for freecms_job.jobrequire
     *
     * @mbggenerated Sat Jul 06 16:55:27 CST 2013
     */
    public void setJobrequire(String jobrequire) {
        this.jobrequire = jobrequire == null ? null : jobrequire.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column freecms_job.addtime
     *
     * @return the value of freecms_job.addtime
     *
     * @mbggenerated Sat Jul 06 16:55:27 CST 2013
     */
    public Date getAddtime() {
        return addtime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column freecms_job.addtime
     *
     * @param addtime the value for freecms_job.addtime
     *
     * @mbggenerated Sat Jul 06 16:55:27 CST 2013
     */
    public void setAddtime(Date addtime) {
        this.addtime = addtime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column freecms_job.endtime
     *
     * @return the value of freecms_job.endtime
     *
     * @mbggenerated Sat Jul 06 16:55:27 CST 2013
     */
    public Date getEndtime() {
        return endtime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column freecms_job.endtime
     *
     * @param endtime the value for freecms_job.endtime
     *
     * @mbggenerated Sat Jul 06 16:55:27 CST 2013
     */
    public void setEndtime(Date endtime) {
        this.endtime = endtime;
    }

	public String getSiteid() {
		return siteid;
	}

	public void setSiteid(String siteid) {
		this.siteid = siteid;
	}

	public String getIsend() {
		return isend;
	}

	public void setIsend(String isend) {
		this.isend = isend;
	}
}