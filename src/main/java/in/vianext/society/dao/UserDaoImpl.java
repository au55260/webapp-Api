package in.vianext.society.dao;

import java.util.List;

import in.vianext.society.entity.User;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDaoImpl  implements UserDao{

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void insertUser(User user) {
	
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.saveOrUpdate(user);
		System.out.println("   user : " +user);
		session.getTransaction().commit();
		session.close();
		}
		 
	@Override
	public List<User> getAllUser() {
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		Query query= session.createQuery("from User");
		List<User> list=query.list();
		session.getTransaction().commit();
		session.close();
		return list;
	}

	@Override
	public User getUserDetails(int id) {
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		User user=(User)session.get(User.class, id);
		session.getTransaction().commit();
		session.close();
		return user;
	}
	
	
	
	
	
	
	 

}
