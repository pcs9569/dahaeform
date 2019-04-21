package kr.co.dahaeform.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MemberCont {
	
	@Autowired
	MemberDAO dao;
	
	public MemberCont() {
		System.out.println("----- MemberCont °´Ã¼ »ý¼ºµÊ");
	}
	
	@RequestMapping(value="/loginform.do" )
	public ModelAndView loginForm() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("member/loginForm");
		return mav;
	}//loginForm() end
	
	@RequestMapping(value="/memberproc.do", method=RequestMethod.POST)
	public ModelAndView memberProc(MemberDTO dto) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("member/loginForm");
		System.out.println("***** MemberContÀÇ memberProc()ÀÇ mav:" + mav.getViewName());
		int count = dao.create(dto);
		mav.addObject("count", count);
		return mav;
	}//memberProc() end
	
}//class end
