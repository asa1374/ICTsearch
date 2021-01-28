package kr.co.ethree.dev.user.main;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.ethree.dev.common.base.BaseAbstractController;
import kr.co.ethree.dev.common.model.ListHelperVO;
import kr.co.ethree.dev.common.util.RequestUtil;
import kr.co.ethree.dev.user.board.service.BoardService;

@Controller
public class MainController extends BaseAbstractController {
	
	@Autowired BoardService boardService;
	
	@RequestMapping("/main.do")
	public String main(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
/*		HttpSession session = request.getSession();

		session.removeAttribute("id");
		session.removeAttribute("name");
		session.invalidate();*/
		System.out.println("메인 접속");
		
		ListHelperVO boardDataListVO = new ListHelperVO(request);
		
		model.addAttribute("boardDataListVO", boardService.getBoardDataListVO(boardDataListVO));
		
		return "user/main";
	}
	@RequestMapping("/login.do")
	public String login(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		return "user/login";
	}
	@RequestMapping("/admin.do")
	public String adminlogin(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		return "user/admin/login";
	}
	@RequestMapping("/register.do")
	public String register(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		return "user/register";
	}

}
