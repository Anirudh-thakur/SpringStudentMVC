package mvc;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/student")
public class StudentController {
	@RequestMapping("/showForm")
	public String showForm(Model theModel)
	{
		//Create a new Student object
		Student theStudent = new Student();
		
		//Add student object in model
		theModel.addAttribute("Student",theStudent);
		return "studentForm";
	}
	
	@RequestMapping("/processForm")
	public String processForm(@Valid @ModelAttribute("student") Student theStudent, BindingResult theBindingResult)
	{
	  // System.out.println(theBindingResult.hasErrors());
		if(theBindingResult.hasErrors())
		{
			return "studentForm";
		}
		System.out.println(theStudent.getFirstName());
		System.out.println(theStudent.getSecondName());
		System.out.println(theStudent.getCountry());
		String[] os = theStudent.getOperatingSystems();
		for(String temp:os)
		{
			System.out.println(temp);
		}
		return "student-confirmation";
		
	}
}
