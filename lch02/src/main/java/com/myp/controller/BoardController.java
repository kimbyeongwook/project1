package com.myp.controller;



import java.io.Writer;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.myp.domain.BoardVO;
import com.myp.domain.Criteria;
import com.myp.domain.Member;
import com.myp.domain.PageMaker;
import com.myp.service.BoardService;
import com.myp.service.MerberService;



@Controller // 컨트롤러임을 명시

@RequestMapping(value = "/") // 주소 패턴

public class BoardController {

	

	


	
	@Inject   // 주입(심부름꾼) 명시

	private BoardService service; // Service 호출을 위한 객체생성
	
	@Inject
  private MerberService memberserivce;
  
	

	@RequestMapping(value= "/listAll", method = RequestMethod.GET) // 주소 호출 명시 . 호출하려는 주소 와 REST 방식설정 (GET)

	public void listAll(Model model)throws Exception { // 메소드 인자값은 model 인터페이스(jsp전달 심부름꾼)
    
		
		
		
		model.addAttribute("list",service.listAll()); 
		
		
		// jsp에 심부름할 내역(서비스 호출)
		
		

	}
	@RequestMapping(value = "/listPage", method = RequestMethod.GET)

	  public void listPage(@ModelAttribute("cri") Criteria cri, Model model) throws Exception {



	    model.addAttribute("list", service.listCriteria(cri)); // JSP에 계산된 페이징 출력

	    PageMaker pageMaker = new PageMaker(); // 객체생성

	    pageMaker.setCri(cri); // setCri 메소드 사용

	    pageMaker.setTotalCount(service.listCountCriteria(cri)); // 전체 게시글 갯수 카운트



	    model.addAttribute("pageMaker", pageMaker);

	  }
	
	@RequestMapping(value="/login" ,method=RequestMethod.GET)
	public void login() {
		
		

		
	}
	@RequestMapping(value="logout" , method=RequestMethod.GET)
	public String logout(HttpSession session) throws Exception{
		
		
		session.invalidate();
		
		return "redirect:listPage";
	}
	@RequestMapping(value="/login" ,method=RequestMethod.POST)
	public String loginmain(Member member, HttpServletRequest request , RedirectAttributes rttr, Model model) throws Exception {
		
		HttpSession session = request.getSession();
		
		Member login= memberserivce.login(member);
		
		if(login==null) {
			
			
			
			
			session.setAttribute("member",null);
			
			rttr.addFlashAttribute("msg1",false);
			
			int msg = 1;
			
			model.addAttribute("msg",msg);
			
			
			 
			
				
			return "loginselect";
			
			
			
			
		}else {
			
			
			session.setAttribute("member", login);
			
			return "redirect:/listPage";
			
			
			
			
		}
		
		
		
		
		

		
	}
	
	
	@RequestMapping(value="/hw", method=RequestMethod.GET)
	public void hw() throws Exception{
		
		
		
		
		
	}
	@RequestMapping(value="/hw",method=RequestMethod.POST)
	public String hw(Member member,Model model) throws Exception {
		
		
		
		memberserivce.membermain(member);
		
		
		return "redirect:login";
		
	}
	

	
	
	
	
	@RequestMapping(value="/remove", method=RequestMethod.GET)
	public String remove(@RequestParam("bno") int bno,Model model) throws Exception {
		service.remove(bno);
		
		return "redirect:listPage";
		
		
		
	}
	@RequestMapping(value="/removeselect", method=RequestMethod.GET)
	public void removeselect(@RequestParam("writer") String writer,  @RequestParam("bno") int bno, Model model) throws Exception {
		
		    model.addAttribute("writer",writer);
		    
		    model.addAttribute("bno",bno);
		    
		    
		
	}
	
	
	@RequestMapping(value="/modify", method=RequestMethod.GET)
	public void modify(@RequestParam("bno") int bno,Model model ) throws Exception {
		
		
		
		model.addAttribute(service.read(bno));
	
		
		
		
		
		
	}
	@RequestMapping(value="/modify", method=RequestMethod.POST)
	public String modifymain(BoardVO vo,Model model) throws Exception {
		service.modify(vo);
		
		return "redirect:listPage";
		
		
		
	}
	@RequestMapping(value="/read", method=RequestMethod.GET)
	public void read(@RequestParam("bno") int bno,Model model) throws Exception {
		model.addAttribute(service.read(bno));
		
		
	}
	
	
		

	
	@RequestMapping(value="/regist", method=RequestMethod.GET)
	public void regist() {
		
		
		
	}
	@RequestMapping(value="/registmain", method=RequestMethod.POST)
	public String registmain(BoardVO board) throws Exception {
		
		
		
				service.regist(board);
			return "redirect:listPage";
	              
		
		
	}
	
	
	
		
		
	

}