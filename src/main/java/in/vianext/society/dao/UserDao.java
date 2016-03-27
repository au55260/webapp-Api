package in.vianext.society.dao;

import java.util.List;

import in.vianext.society.entity.User;

public interface UserDao {
	
	public void insertUser(User user);
	public List<User> getAllUser();
	public User getUserDetails(int id);
}
