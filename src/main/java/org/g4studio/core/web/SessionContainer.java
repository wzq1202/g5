package org.g4studio.core.web;

import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionBindingListener;

import org.g4studio.core.metatype.Dto;
import org.g4studio.core.metatype.impl.BaseDto;
import org.g4studio.system.common.dao.vo.StudentInfoVo;
import org.g4studio.system.common.dao.vo.UserInfoVo;

/**
 * Session容器
 * 
 * @author 熊春
 * @since 2009-09-03
 * @see HttpSessionBindingListener
 */
public class SessionContainer implements HttpSessionBindingListener {

	/**
	 * 登陆用户对象
	 */
	private UserInfoVo userInfo;

	private StudentInfoVo studentInfo;

	/**
	 * 报表对象集
	 */
	private Dto reportDto;

	public SessionContainer() {
		super();
		reportDto = new BaseDto();
	}

	/**
	 * 清除会话容器缓存对象
	 */
	public void cleanUp() {
		// userInfo不能在此批量重置,只能使用setUserInfo(null)方法对其进行独立操作
		// userInfo = null;
		reportDto.clear();
	}

	public void valueBound(HttpSessionBindingEvent event) {
		// System.out.println("会话创建了");
	}

	public void valueUnbound(HttpSessionBindingEvent event) {
		// System.out.println("会话销毁了");
	}

	/**
	 * 获取用户会话对象
	 * 
	 * @return UserInfo
	 */
	public UserInfoVo getUserInfo() {
		return userInfo;
	}

	/**
	 * 设置用户会话对象
	 * 
	 * @param userInfo
	 */
	public void setUserInfo(UserInfoVo userInfo) {
		this.userInfo = userInfo;

	}

	public StudentInfoVo getStudentInfo() {
		return studentInfo;
	}

	public void setStudentInfo(StudentInfoVo studentInfo) {
		this.studentInfo = studentInfo;
	}

}
