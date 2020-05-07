package mvc;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HelloWorldController {

	// need controller method to show initial form
	
	@RequestMapping("/showForm")
	public String showForm()
	{
		return "helloWorld-form";
	}
	//To process the form 
	@RequestMapping("/processForm")
	public String processForm()
	{
		return "helloWorld";
	}
	
	//To process form by using model
/*	@RequestMapping("/processFormVersiontwo")
	public String capitaliseName(HttpServletRequest request, Model model)
	{
		String name = request.getParameter("name");
		name = name.toUpperCase();
		name = "Yo ,"+name;
		model.addAttribute("message",name);
		return "helloWorld";
	}
*/	
	//Process model by using @RequestParam
	@RequestMapping("/processFormVersiontwo")
	public String capitaliseName(@RequestParam("name")String name, Model model)
	{
		name = name.toUpperCase();
		name = "What's up ,"+name+"?";
		
		//setting request in model
		model.addAttribute("message",name);
		return "helloWorld";
	}
}
