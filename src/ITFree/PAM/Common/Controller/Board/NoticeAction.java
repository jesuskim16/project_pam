package ITFree.PAM.Common.Controller.Board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class NoticeAction {	
		
		@RequestMapping("/notice_list.do")
		protected ModelAndView noticeList(HttpServletRequest requset,
				HttpServletResponse response) throws Exception {
			
			ModelAndView mav = new ModelAndView();
			mav.setViewName("/WEB-INF/www/agent/board/boardList.jsp");
			mav.addObject("title_name","PAM::공지사항");
			mav.addObject("board_chk","1");             //게시판분류 (2: 자유게시판)
			mav.addObject("board_name","notice"); //게시판이름
			mav.addObject("brc_lev","1");		//레벨(1:대리점, 2:판매점)
			return mav;
		}
		
		@RequestMapping("/notice_insert.do")
		protected ModelAndView noticeInsert(HttpServletRequest requset,
				HttpServletResponse response) throws Exception {
			
			ModelAndView mav = new ModelAndView();
			mav.setViewName("/WEB-INF/www/agent/board/boardInsert.jsp");
			mav.addObject("title_name","PAM::공지사항");
			mav.addObject("board_chk","1");             //게시판분류 (2: 자유게시판)
			mav.addObject("board_name","notice"); //게시판이름
			mav.addObject("brc_lev","1");		//레벨(1:대리점, 2:판매점)
			return mav;
		}

		@RequestMapping("/notice_update.do")
		protected ModelAndView noticeUpdate(HttpServletRequest requset,
				HttpServletResponse response) throws Exception {
			
			ModelAndView mav = new ModelAndView();
			mav.setViewName("/WEB-INF/www/agent/board/boardUpdate.jsp");
			mav.addObject("title_name","PAM::공지사항");
			mav.addObject("board_chk","1");             //게시판분류 (2: 자유게시판)
			mav.addObject("board_name","notice"); //게시판이름
			mav.addObject("brc_lev","1");		//레벨(1:대리점, 2:판매점)
			return mav;
		}
		
		@RequestMapping("/notice_delete.do")
		protected ModelAndView noticeDelete(HttpServletRequest requset,
				HttpServletResponse response) throws Exception {
			
			ModelAndView mav = new ModelAndView();
			mav.setViewName("/WEB-INF/www/agent/board/boardDelete.jsp");
			mav.addObject("title_name","PAM::공지사항");
			mav.addObject("board_chk","1");             //게시판분류 (2: 자유게시판)
			mav.addObject("board_name","notice"); //게시판이름
			mav.addObject("brc_lev","1");		//레벨(1:대리점, 2:판매점)
			return mav;
		}		
		
}
