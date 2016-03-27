package in.vianext.society.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import in.vianext.society.entity.User;
import in.vianext.society.service.UserService;
@Controller
public class UserController {
	@Autowired
	UserService userService;
	
	@RequestMapping(value="/helloserver",method=RequestMethod.GET)
	@ResponseBody
	public String GetStatus()
	{
		return "Welocme !";
	}
	
	@RequestMapping(value="/insert")
	public String insertUser(){ 
		
	User user=new User();
	user.setBolg("bolg");
	user.setEmail("email@gmail.com");
	user.setName("name");
	user.setPassword("password");
		userService.insertUser(user);
		return "index";
	}
	
	@RequestMapping(value="/usersAll" , method=RequestMethod.GET)
	public String getAllUser(Model model){
		System.out.println("users called!!!");		
		List<User> users=userService.getAllUser();
		System.out.println("users :"+users);;
		model.addAttribute("users", users);
		return "users";
	}
	
	@RequestMapping(value="/user/{id}" , method=RequestMethod.GET)
	public String getUserDetails(Model model,@PathVariable int id){
		System.out.println("user details method called");
		User users=userService.getUserDetails(id);
		System.out.println("users-detail :"+users);
		model.addAttribute("user", users);
		return "user-detail";
	}

}
