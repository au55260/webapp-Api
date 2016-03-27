package in.vianext.society.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;


@Entity
public class User {
	@Id
	@GeneratedValue
	private Integer id;
	private String name;
	private String password;
	private String email;
	private String bolg;
	public User() {
		// TODO Auto-generated constructor stub
	}
	
	public User(Integer id, String name, String password, String email,
			String bolg) {
		super();
		this.id = id;
		this.name = name;
		this.password = password;
		this.email = email;
		this.bolg = bolg;
	}

	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getBolg() {
		return bolg;
	}
	public void setBolg(String bolg) {
		this.bolg = bolg;
	}
	
	
	

}
