package com.green.user.dao;

import java.util.List;

import com.green.user.vo.UserVo;

public interface UserDao {

	void insertUser(UserVo user);

	List getUserList();

	UserVo getUser(String userid);

	void deleteUser(String userid);

	void updateUser(UserVo vo);

}
