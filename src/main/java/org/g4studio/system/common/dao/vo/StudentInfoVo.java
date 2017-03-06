package org.g4studio.system.common.dao.vo;

import org.g4studio.core.metatype.BaseVo;

public class StudentInfoVo  extends BaseVo{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String cmis;
	
	private String name;
	
	private String loginTime;
	
	private String studentClass;

	public String getCmis() {
		return cmis;
	}

	public void setCmis(String cmis) {
		this.cmis = cmis;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLoginTime() {
		return loginTime;
	}

	public void setLoginTime(String loginTime) {
		this.loginTime = loginTime;
	}

	public String getStudentClass() {
		return studentClass;
	}

	public void setStudentClass(String studentClass) {
		this.studentClass = studentClass;
	}
	
	

}
