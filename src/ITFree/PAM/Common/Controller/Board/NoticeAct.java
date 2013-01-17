package ITFree.PAM.Common.Controller.Board;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import ITFree.PAM.Common.Model.Board.BoardDao;
import ITFree.PAM.Common.Model.Board.BoardDto;
import ITFree.PAM.Common.Model.Board.PageDto;

@Controller
public class NoticeAct {
	private Logger log = Logger.getLogger(this.getClass());
	private int board_chk = 1;
	private String board_name = "notice";	
	private String title_name = "PAM::공지사항";	
	
	@Autowired
	private BoardDao boardDao;
		
		@RequestMapping("/noticeList.do")//리스트 폼 
		protected ModelAndView noticeList(@ModelAttribute PageDto spageDto , HttpSession session){
			log.debug("---start["+"NoticeAct.noticeList"+"]");
			
			if(spageDto.getPg() == 0)spageDto.setPg(1);			
			spageDto.setBoard_chk(board_chk);				//TotalCount를 얻기위한 게시판코드(tw)
			PageDto pageDto = new PageDto(spageDto.getPg(), boardDao.TotalCount(spageDto), spageDto.getSearchCondition(), spageDto.getSearchKeyword());
			pageDto.setSearchCondition(spageDto.getSearchCondition()); //값을 유지할 수 있도록 pageDto 객체에 검색상태 넘김
			pageDto.setSearchKeyword(spageDto.getSearchKeyword()); 	   // 값을 유지할 수 있도록 pageDto 객체에  검색단어를 넘김
			pageDto.setBoard_chk(board_chk);
			List<BoardDto> fbList = boardDao.freeBoardList(pageDto);       // 리스트를 뿌리기 위해 SQL을 넘기고 값을 받아옴
			
			ModelAndView mav = new ModelAndView();
			mav.setViewName("/WEB-INF/www/common/board/boardList.jsp"); // 이동할 페이지
			mav.addObject("title_name",title_name); //게시판 이름
			mav.addObject("board_chk",board_chk);             //게시판분류 (2: 자유게시판)
			mav.addObject("board_name",board_name); //게시판이름
			mav.addObject("brc_lev",session.getAttribute("brc_lev"));		//레벨(1:대리점, 2:판매점)
			mav.addObject("fbList",fbList);     // Web으로 리스트를 넘김 
			mav.addObject("pageDto", pageDto);	// Web으로 pageDto정보를 넘김(검색창을 설정해 주기 위함)
			mav.addObject("page" ,pageDto.getpHtml());	// 게시판 아래 페이징을 하기위해 페이지정보를 넘김
			return mav;
		}
		
		@RequestMapping(value="/noticeView.do")//뷰 폼(tw)
		protected ModelAndView noticeView(@ModelAttribute BoardDto boardDto, HttpServletRequest request, HttpSession session){
			log.debug("---start["+"NoticeAct.noticeView"+"]");
			
			String brc_id = boardDto.getBrc_id();
			long seq = boardDto.getSeq();
			long rp_seq = seq;
			boardDto = boardDao.freeBoardView(seq); 						// seq를 이용하여 게시판 상세보기 SQL 값 얻어옴

			List<BoardDto> rList = boardDao.getReply(rp_seq);

			String sessionId = (String) session.getAttribute("brc_id");		//로그인한 사람(session id)과 글쓴 사람이 다를경우 조회수 증가를 하는 조건문
			String write_ip = request.getRemoteAddr();						//접속 아이피주소
			
			if(!sessionId.equals(brc_id)){
					boardDao.BoardReadCount(seq);
			}

			Map<String,Long> seqBd = new HashMap<String,Long>();
			seqBd.put("seq", seq);
			seqBd.put("board_chk", (long) board_chk);					//seq 와 board_chk를 ibatis로 전송하기위해 hashmap처리
			boardDto.setPrev_seq(boardDao.Prev_seq(seqBd));				//이전글 보기 seq를 얻어옴
			boardDto.setNext_seq(boardDao.Next_seq(seqBd));				//다음글 보기 seq를 얻어옴
			boardDto.setContent(boardDto.getContent().replace("\n", "<br/>"));
			ModelAndView mav = new ModelAndView();
			mav.setViewName("/WEB-INF/www/common/board/boardView.jsp"); //이동주소
			mav.addObject("title_name", title_name); 					// 게시판 이름
			mav.addObject("board_chk", board_chk);             			//게시판분류 (2: 자유게시판)
			mav.addObject("board_name", board_name); 					//게시판이름
			mav.addObject("brc_lev", session.getAttribute("brc_lev"));	//레벨(1:대리점, 2:판매점)
			mav.addObject("boardDto", boardDto);
			mav.addObject("sessionId", sessionId);
			mav.addObject("sessionIp", write_ip);
			mav.addObject("rList", rList); 								//댓글 파라메터 전송
			return mav;
		}
		
		@RequestMapping("/noticeInsert.do")
		protected ModelAndView noticeInsert(@ModelAttribute BoardDto boardDto, HttpServletRequest request, HttpSession session){			
			log.debug("---start["+"NoticeAct.noticeInsert"+"]");
			
			String brc_id = (String) session.getAttribute("brc_id");
			String write_ip = request.getRemoteAddr(); //접속 아이피주소 
			ModelAndView mav = new ModelAndView();
			mav.setViewName("/WEB-INF/www/common/board/boardInsert.jsp");
			mav.addObject("title_name",title_name);
			mav.addObject("board_chk",board_chk);             //게시판분류 (2: 자유게시판)
			mav.addObject("board_name",board_name); //게시판이름
			mav.addObject("brc_lev",session.getAttribute("brc_lev"));		//레벨(1:대리점, 2:판매점)
			mav.addObject("brc_id" , brc_id);   //글쓰기 시 id를 DB에 삽입하기 위해 값을 넘김
			mav.addObject("write_ip", write_ip);//글쓰기 시 ip를 DB에 사빕하기 위해 값을 넘김
			return mav;
		}

		@RequestMapping(value="/noticeInsertAction.do")//입력
		protected ModelAndView noticeInsertAction(@ModelAttribute BoardDto boardDto, HttpSession session){
			log.debug("---start["+"NoticeAct.noticeInsertAction"+"]");
			
			boardDto.setBoard_chk(board_chk);		//게시판분류코드
			boolean result = boardDao.freeBoardInsertAction(boardDto);
			ModelAndView mav = new ModelAndView();
			if(result){
				mav.setViewName("noticeList.do");
			}else{
				mav.setViewName("/WEB-INF/www/common/result.jsp");
				mav.addObject("msg","글 쓰기 실패입니다.");
				mav.addObject("url","javascript:history.back();");
			}
			mav.addObject("title_name",title_name);
			mav.addObject("board_chk",board_chk);             	//게시판분류 (2: 자유게시판)
			mav.addObject("board_name",board_name); 			//게시판이름
			mav.addObject("brc_lev",session.getAttribute("brc_lev"));		//레벨(1:대리점, 2:판매점)
			return mav;
		}		
		
		@RequestMapping("/noticeUpdate.do")
		protected ModelAndView noticeUpdate(long seq, String brc_id, HttpSession session){
			log.debug("---start["+"NoticeAct.noticeUpdate"+"]");
			
			ModelAndView mav = new ModelAndView();
			if(session.getAttribute("brc_id").equals(brc_id)){
				BoardDto boardDto = new BoardDto();
				boardDto = boardDao.freeBoardView(seq);
				mav.setViewName("/WEB-INF/www/common/board/boardUpdate.jsp");
				mav.addObject("title_name", title_name);
				mav.addObject("board_chk", board_chk);             	//게시판분류 (2: 자유게시판)
				mav.addObject("board_name", board_name); 			//게시판이름
				mav.addObject("brc_lev", session.getAttribute("brc_lev"));		//레벨(1:대리점, 2:판매점)
				mav.addObject("boardDto", boardDto);
			}else{
				mav.setViewName("/WEB-INF/www/common/result.jsp");
				mav.addObject("msg", "수정 권한이 없습니다.");
				mav.addObject("url", "javascript:history.back();");
			}
			return mav;
		}
		
		@RequestMapping("/noticeUpdateAction.do")//수정 
		protected ModelAndView noticeUpdateAction(@ModelAttribute BoardDto boardDto){	
			log.debug("---start["+"NoticeAct.noticeUpdateAction"+"]");
			
			boolean result = boardDao.freeBoardUpdateAction(boardDto);
			ModelAndView mav = new ModelAndView();
			if(result){
				mav.setViewName("noticeList.do");
			}else{
				mav.setViewName("/WEB-INF/www/common/result.jsp");
				mav.addObject("msg" , "수정 실패입니다.");
				mav.addObject("url" ,"javascript:history.back();");
			}
			return mav;
		}
		
		@RequestMapping("/noticeDelete.do")
		protected ModelAndView noticeDelete(@ModelAttribute BoardDto boardDto, HttpSession session){			
			log.debug("---start["+"NoticeAct.noticeDelete"+"]");
			
			ModelAndView mav = new ModelAndView();
			if(session.getAttribute("brc_id").equals(boardDto.getBrc_id())){
				boolean result = boardDao.freeBoardDelete(boardDto);
				if(result){
					mav.setViewName("noticeList.do");
				}else{
					mav.setViewName("/WEB-INF/www/common/result.jsp");
					mav.addObject("msg" , boardDto.getSeq()+"번 게시물 삭제가 실패하였습니다, 관리자에게 문의하세요.");
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
