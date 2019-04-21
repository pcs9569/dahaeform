package kr.co.dahaeform.qedit;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class QeditCont {

	public QeditCont() {
		System.out.println("QeditCont°´Ã¼ »ý¼º...");
	}
	
	@RequestMapping(value="/createform.do")
	public ModelAndView createForm() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("qedit/createForm");
		return mav;
	}//createForm() end
	
	
}//class end
