package mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/forms")
public class NestedHelloWorldController {
	@RequestMapping("/helloForm")
	public String showForm()
	{
		return "helloWorld-form";
	}
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
