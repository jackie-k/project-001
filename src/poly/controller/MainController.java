package poly.controller;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import poly.dto.ListDTO;
import poly.service.IListService;
import poly.service.IMainService;

import java.util.ArrayList;
import java.util.List;

/*
 * Controller 선언해야만 Spring 프레임워크에서 Controller인지 인식 가능
 * 자바 서블릿 역할 수행
 * */
@Controller
public class MainController {
	private Logger log = Logger.getLogger(this.getClass());
	
	/*
	 * 비즈니스 로직(중요 로직을 수행하기 위해 사용되는 서비스를 메모리에 적재(싱글톤패턴 적용됨)
	 * */
	@Resource(name = "MainService")
	private IMainService MainService;

	@Resource(name = "ListService")
	private IListService listService;
	
	/*
	 * 함수명 위의 value="notice/NoticeList" => /notice/NoticeList.do로 호출되는 url은 무조건 이 함수가 실행된다.
	 * method=RequestMethod.GET => 폼 전송방법을 지정하는 것으로 get방식은 GET, post방식은 POST이다.
	 * method => 기입안하면 GET, POST 모두 가능하나, 가급적 적어주는 것이 좋다.
	 * */
	
	@RequestMapping(value="index")
	public String Index(Model model) {
		log.info(this.getClass());

		List<ListDTO> lList = new ArrayList<>();

		try {
			lList = listService.getFeaturedList();
		} catch (Exception e) {
			e.printStackTrace();
		}

		model.addAttribute("lList",lList);
		
		return "index";
	}

	@RequestMapping(value="chatbot")
	public String Chatbot() {
		log.info(this.getClass());

		return "/chatbot";
	}

	@RequestMapping(value="about")
	public String About() {
		log.info(this.getClass());

		return "/about";
	}

			
}
