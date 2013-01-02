package ITFree.PAM.Common.Controller.Board;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.tagext.PageData;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import ITFree.PAM.Common.Model.ResultDto;
import ITFree.PAM.Common.Model.Board.BoardDao;
import ITFree.PAM.Common.Model.Board.BoardDto;
import ITFree.PAM.Common.Model.Board.PageDto;

@Controller
public class FreeboardAct {
	
		@Autowired
		private BoardDao boardDao;
		
		private Logger log = Logger.getLogger(this.getClass());
		
		@RequestMapping("/freeBoardList.do")
		protected ModelAndView freeBoardList(@ModelAttribute PageDto spageDto , HttpSession session) throws Exception {
			//spageDto는 Web에서 parameter를 받기위한 객체로 사용			
			
			//처음 자유게시판에 진입할때 현재페이지를 1로 초기화
			if(spageDto.getPg() == 0){
				spageDto.setPg(1);
			}
			
			//생성자에 4개의 값을 넘김
			//spageDto.getPg() : 페이지정보를 넘김 pg값 (이동할 페이지)
			//boardDao.TotalCount(spageDto) : 게시물의 갯수를 넘김(검색값 포함)
			//spageDto.getSearchCondition() : 검색 상태를 넘김 (제목인지 내용인지 이름인지 등등....)
			//spageDto.getSearchKeyword()   : 검색한 단어를 넘김
			PageDto pageDto = new PageDto(spageDto.getPg(), boardDao.TotalCount(spageDto), spageDto.getSearchCondition(), spageDto.getSearchKeyword());
			pageDto.setSearchCondition(spageDto.getSearchCondition()); //값을 유지할 수 있도록 pageDto 객체에 검색상태 넘김
			pageDto.setSearchKeyword(spageDto.getSearchKeyword()); 	   // 값을 유지할 수 있도록 pageDto 객체에  검색단어를 넘김
			List<BoardDto> fbList = boardDao.freeBoardList(pageDto);       // 리스트를 뿌리기 위해 SQL을 넘기고 값을 받아옴
			
			ModelAndView mav = new ModelAndView();
			mav.setViewName("/WEB-INF/www/common/board/boardList.jsp"); // 이동할 페이지
			mav.addObject("title_name","PAM::자유게시판"); //게시판 이름
			mav.addObject("board_chk","2");             //게시판분류 (2: 자유게시판)
			mav.addObject("board_name","freeBoard"); //게시판이름
			mav.addObject("brc_lev","1");		//레벨(1:대리점, 2:판매점)
			mav.addObject("fbList",fbList);     // Web으로 리스트를 넘김 
			mav.addObject("pageDto", pageDto);	// Web으로 pageDto정보를 넘김(검색창을 설정해 주기 위함)
			mav.addObject("page" ,pageDto.getpHtml());	// 게시판 아래 페이징을 하기위해 페이지정보를 넘김
			return mav;
		}
		
		@RequestMapping("/freeBoardView.do")
		protected ModelAndView freeBoardView(@ModelAttribute BoardDto boardDto, HttpServletRequest request, HttpSession session) throws Exception {
			String brc_id = boardDto.getBrc_id();
			long seq = boardDto.getSeq();			
			long rp_seq = seq;
			boardDto = boardDao.freeBoardView(seq); // seq를 이용하여 게시판 상세보기 SQL 값 얻어옴
			List<BoardDto> rList = boardDao.getReply(rp_seq);
			//로그인한 사람(session id)과 글쓴 사람이 다를경우 조회수 증가를 하는 조건문
			String sessionId = (String) session.getAttribute("brc_id");
			String write_ip = request.getRemoteAddr(); //접속 아이피주소			
			if(!sessionId.equals(brc_id)){
					boardDao.BoardReadCount(seq);
			}

			//이전글 보기 seq를 얻어옴
			boardDto.setPrev_seq(boardDao.Prev_seq(seq));
			//다음글 보기 seq를 얻어옴
			boardDto.setNext_seq(boardDao.Next_seq(seq));
			boardDto.setContent(boardDto.getContent().replace("\n", "<br/>"));

			ModelAndView mav = new ModelAndView();
			mav.setViewName("/WEB-INF/www/common/board/boardView.jsp"); //이동주소
			mav.addObject("title_name","PAM::공지사항"); // 게시판 이름
			mav.addObject("board_chk","2");             //게시판분류 (2: 자유게시판)
			mav.addObject("board_name","freeBoard"); //게시판이름
			mav.addObject("brc_lev","1");		//레벨(1:대리점, 2:판매점)
			mav.addObject("boardDto",boardDto);
			mav.addObject("sessionId", sessionId);
			mav.addObject("sessionIp", write_ip);
			mav.addObject("rList",rList); //댓글 파라메터 전송
			return mav;
		}
		
		@RequestMapping("/freeBoardReplyInsert.do")
		protected ModelAndView freeBoardReplyInsert(@ModelAttribute BoardDto boardDto){
			long rp_seq = boardDto.getSeq();
			boolean result = boardDao.freeBoardReplyInsert(boardDto);
			ModelAndView mav = new ModelAndView();
			if(result){
				mav.setViewName("freeBoardView.do?rp_seq="+rp_seq); //이동주소
			}else{
				mav.setViewName("/WEB-INF/www/common/result.jsp");
				mav.addObject("msg","댓글입력 실패입니다.");
				mav.addObject("url","javascript:history.back();");
			}			
			mav.addObject("title_name","PAM::공지사항"); // 게시판 이름
			mav.addObject("board_chk","2");             //게시판분류 (2: 자유게시판)
			mav.addObject("board_name","freeBoard"); //게시판이름
			mav.addObject("brc_lev","1");		//레벨(1:대리점, 2:판매점)
			
			return mav;
		}
		
		@RequestMapping("freeBoardReplyDelete.do")
		protected ModelAndView freeBoardReplyDelete(@ModelAttribute BoardDto boardDto, HttpSession session){
			
			ModelAndView mav = new ModelAndView();
			long rp_seq = boardDto.getRp_seq();
			if(session.getAttribute("brc_id").equals(boardDto.getBrc_id())){
				boolean result = boardDao.freeBoardReplyDelete(rp_seq);
				
				if(result){
					mav.setViewName("freeBoardView.do"); //이동주소
				}else{
					mav.setViewName("/WEB-INF/www/common/result.jsp");
					mav.addObject("msg","댓글삭제 실패입니다.");
					mav.addObject("url","javascript:history.back();");
				}		
			}else{
				mav.setViewName("/WEB-INF/www/common/result.jsp");
				mav.addObject("msg","댓글삭제 권한이없습니다.");
				mav.addObject("url","javascript:history.back();");
			}
				
			mav.addObject("title_name","PAM::공지사항"); // 게시판 이름
			mav.addObject("board_chk","2");             //게시판분류 (2: 자유게시판)
			mav.addObject("board_name","freeBoard"); //게시판이름
			mav.addObject("brc_lev","1");		//레벨(1:대리점, 2:판매점)
			
			return mav;
			
		}
		
		@RequestMapping("/freeBoardInsert.do")
		protected ModelAndView freeBoardInsert(HttpServletRequest request,HttpSession session) throws Exception {	
			String brc_id = (String) session.getAttribute("brc_id");
			String write_ip = request.getRemoteAddr(); //접속 아이피주소 
			ModelAndView mav = new ModelAndView();
			mav.setViewName("/WEB-INF/www/common/board/boardInsert.jsp");
			mav.addObject("title_name","PAM::공지사항");
			mav.addObject("board_chk","2");             //게시판분류 (2: 자유게시판)
			mav.addObject("board_name","freeBoard"); //게시판이름
			mav.addObject("brc_lev","1");		//레벨(1:대리점, 2:판매점)
			mav.addObject("brc_id" , brc_id);   //글쓰기 시 id를 DB에 삽입하기 위해 값을 넘김
			mav.addObject("write_ip", write_ip);//글쓰기 시 ip를 DB에 사빕하기 위해 값을 넘김
			return mav;
		}
		
		@RequestMapping("/freeBoardInsertAction.do")
		protected ModelAndView freeBoardInsertAction(@ModelAttribute BoardDto boardDto) throws Exception {

			boolean result = boardDao.freeBoardInsertAction(boardDto);
			ModelAndView mav = new ModelAndView();
			if(result){
				mav.setViewName("freeBoardList.do");
			}else{
				mav.setViewName("/WEB-INF/www/common/result.jsp");
				mav.addObject("msg","글 쓰기 실패입니다.");
				mav.addObject("url","javascript:history.back();");
			}			
			mav.addObject("title_name","PAM::공지사항");
			mav.addObject("board_chk","2");             //게시판분류 (2: 자유게시판)
			mav.addObject("board_name","freeBoard"); //게시판이름
			mav.addObject("brc_lev","1");		//레벨(1:대리점, 2:판매점)
			return mav;
		}

		@RequestMapping("/freeBoardUpdate.do")
		protected ModelAndView freeBoardUpdate(long seq, String brc_id, HttpSession session) throws Exception {
			
			ModelAndView mav = new ModelAndView();
			if(session.getAttribute("brc_id").equals(brc_id)){
				BoardDto boardDto = new BoardDto();
				boardDto = boardDao.freeBoardView(seq);
				mav.setViewName("/WEB-INF/www/common/board/boardUpdate.jsp");
				mav.addObject("title_name","PAM::공지사항");
				mav.addObject("board_chk","2");             //게시판분류 (2: 자유게시판)
				mav.addObject("board_name","freeBoard"); //게시판이름
				mav.addObject("brc_lev","1");		//레벨(1:대리점, 2:판매점)
				mav.addObject("boardDto",boardDto);
			}else{
				mav.setViewName("/WEB-INF/www/common/result.jsp");
				mav.addObject("msg" , "수정 권한이 없습니다.");
				mav.addObject("url" ,"javascript:history.back();");
			}			
			return mav;
		}
		
		@RequestMapping("/freeBoardUpdateAction.do")
		protected ModelAndView freeBoardUpdateAction(@ModelAttribute BoardDto boardDto) throws Exception {	
			boolean result = boardDao.freeBoardUpdateAction(boardDto);
			ModelAndView mav = new ModelAndView();
			if(result){
				mav.setViewName("freeBoardList.do");
			}else{
				mav.setViewName("/WEB-INF/www/common/result.jsp");
				mav.addObject("msg" , "수정 실패입니다.");
				mav.addObject("url" ,"javascript:history.back();");
			}			
			return mav;
		}
		
		@RequestMapping("/freeBoardDelete.do")
		protected ModelAndView freeBoardDelete(@ModelAttribute BoardDto boardDto, HttpSession session) throws Exception {
			ModelAndView mav = new ModelAndView();
			if(session.getAttribute("brc_id").equals(boardDto.getBrc_id())){
				boolean result = boardDao.freeBoardDelete(boardDto);
				if(result){
					mav.setViewName("freeBoardList.do");
				}else{
					mav.setViewName("/WEB-INF/www/common/result.jsp");
					mav.addObject("msg" , "삭제 실패입니다.");
					mav.addObject("url" ,"javascript:history.back();");
				}		
			}else{
				mav.setViewName("/WEB-INF/www/common/result.jsp");
				mav.addObject("msg" , "권한이 없습니다.");
				mav.addObject("url" ,"javascript:history.back();");
			}
			return mav;
		}		
		
}
