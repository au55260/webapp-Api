package in.vianext.society.service;

import in.vianext.society.dao.UserDao;
import in.vianext.society.entity.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserDao userDao;
	
	@Override
	public void insertUser(User user) {
		// TODO Auto-generated method stub
		userDao.insertUser(user);
	}

	@Override
	@Transactional
	public List<User> getAllUser() {
		// TODO Auto-generated method stub
		return userDao.getAllUser();
		
	}

	@Override
	public User getUserDetails(int id) {
		// TODO Auto-generated method stub
		return userDao.getUserDetails(id);
		
	}
	
	

	

}
