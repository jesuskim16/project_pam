package ITFree.PAM.Common.Controller.Board;

import java.io.File;
import java.io.IOException;
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
import org.springframework.web.multipart.MultipartFile;
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
			
			String UrlName = board_name+"List.do";
			
			PageDto pageDto = new PageDto(spageDto.getPg(), boardDao.TotalCount(spageDto), spageDto.getSearchCondition(), spageDto.getSearchKeyword(),
					UrlName);
			pageDto.setSearchCondition(spageDto.getSearchCondition()); //값을 유지할 수 있도록 pageDto 객체에 검색상태 넘김
			pageDto.setSearchKeyword(spageDto.getSearchKeyword()); 	   // 값을 유지할 수 있도록 pageDto 객체에  검색단어를 넘김
			pageDto.setBoard_chk(board_chk);
			
			List<BoardDto> fbList = boardDao.freeBoardList(pageDto);       // 리스트를 뿌리기 위해 SQL을 넘기고 값을 받아옴
			
			ModelAndView mav = new ModelAndView();
			mav.setViewName("/WEB-INF/www/common/board/boardList.jsp"); // 이동할 페이지
			mav.addObject("title_name", title_name); //게시판 이름
			mav.addObject("board_chk", board_chk);             //게시판분류 (2: 자유게시판)
			mav.addObject("board_name", board_name); //게시판이름
			mav.addObject("brc_lev", session.getAttribute("brc_lev"));		//레벨(1:대리점, 2:판매점)
			mav.addObject("fbList", fbList);     // Web으로 리스트를 넘김 
			mav.addObject("pageDto", pageDto);	// Web으로 pageDto정보를 넘김(검색창을 설정해 주기 위함)
			mav.addObject("page", pageDto.getpHtml());	// 게시판 아래 페이징을 하기위해 페이지정보를 넘김
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
		
		@RequestMapping("/noticeInsert.do")//입력 폼
		protected ModelAndView noticeInsert(@ModelAttribute BoardDto boardDto, HttpServletRequest request, HttpSession session){			
			log.debug("---start["+"NoticeAct.noticeInsert"+"]");
			
			String brc_id = (String) session.getAttribute("brc_id");
			String write_ip = request.getRemoteAddr(); //접속 아이피주소 
			ModelAndView mav = new ModelAndView();
			mav.setViewName("/WEB-INF/www/common/board/boardInsert.jsp");
			mav.addObject("title_name", title_name);
			mav.addObject("board_chk", board_chk);             //게시판분류 (2: 자유게시판)
			mav.addObject("board_name", board_name); //게시판이름
			mav.addObject("brc_lev", session.getAttribute("brc_lev"));		//레벨(1:대리점, 2:판매점)
			mav.addObject("brc_id" , brc_id);   //글쓰기 시 id를 DB에 삽입하기 위해 값을 넘김
			mav.addObject("write_ip", write_ip);//글쓰기 시 ip를 DB에 사빕하기 위해 값을 넘김
			return mav;
		}

		@RequestMapping(value="/noticeInsertAction.do")//입력
		protected ModelAndView noticeInsertAction(@ModelAttribute BoardDto boardDto, HttpSession session){
			log.debug("---start["+"NoticeAct.noticeInsertAction"+"]");
			
			boardDto.setBoard_chk(board_chk);		//게시판분류코드
			
			String server_root ="c:\\Documents and Settings\\A\\git\\project_pam\\WebContent";	//서버절대경로
			String upfolder = server_root+"\\upload\\"+board_name+"\\";							//업로드경로
			
			MultipartFile Mfile = boardDto.getUpFile();	// 	MultipartFile Mfile에 Web에서 넘어온 file type 값을 가져온다.

			ModelAndView mav = new ModelAndView();
			
			if (!Mfile.isEmpty()) { // Mfile이 비어있지 않다면~
				//파일 SIZE가 5MB 이상이라면~
				if(Mfile.getSize() > 5242880){
					mav.setViewName("/WEB-INF/www/common/result.jsp");
					mav.addObject("msg" , "5MB 이하의 파일만 업로드 가능합니다.");
					mav.addObject("url" ,"javascript:history.back();");	
					return mav;
				}				
					String filename = Mfile.getOriginalFilename(); // 실제 file 이름을 저장
					boardDto.setFilename(filename);
					File file = new File(upfolder
							+ filename); // FILE(java.io)에 경로를 넣어줌
					//만약 폴더가 없을 시 폴더를 생설 할 것
					if(!file.exists()){
						file.mkdirs();
					}
					if(file.exists() && file.isFile()){	// 이미 존재하는 파일일경우 현재시간을 가져와서 리네임
						filename = System.currentTimeMillis()  +"_"+ Mfile.getOriginalFilename() ;
						file = new File(upfolder + filename);	//리네임된 파일이름으로 재생성
					}			
					
					try {
						Mfile.transferTo(file); // 실제 경로에 Upload
					} catch (IllegalStateException e) {
						e.printStackTrace();								
						mav.setViewName("/WEB-INF/www/common/result.jsp");
						mav.addObject("msg" , "업로드 중 에러발생하였습니다. 다시 시도해주세요.");
						mav.addObject("url" ,"javascript:history.back();");
						return mav;
					} catch (IOException e) {
						e.printStackTrace();
						mav.setViewName("/WEB-INF/www/common/result.jsp");
						mav.addObject("msg" , "업로드 중 에러발생하였습니다. 다시 시도해주세요.");
						mav.addObject("url" ,"javascript:history.back();");
						return mav;
					}

			}
			
			boolean result = boardDao.freeBoardInsertAction(boardDto);
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
		
		@RequestMapping("/noticeUpdate.do")//수정 폼
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
		
		@RequestMapping("/noticeDelete.do")// 삭제
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
		
		@RequestMapping("/noticeReplyInsert.do")//댓글입력
		protected ModelAndView noticeReplyInsert(@ModelAttribute BoardDto boardDto, HttpSession session){
			log.debug("---start["+"noticeAct.noticeReplyInsert"+"]");
			long rp_seq = boardDto.getSeq();
			
			boardDto.setBoard_chk(board_chk);//게시판분류 추가
			boolean result = boardDao.freeBoardReplyInsert(boardDto);
			ModelAndView mav = new ModelAndView();
			if(result){
				mav.setViewName("noticeView.do?rp_seq="+rp_seq); //이동주소
			}else{
				mav.setViewName("/WEB-INF/www/common/result.jsp");
				mav.addObject("msg","댓글입력 실패입니다.");
				mav.addObject("url","javascript:history.back();");
			}			
			mav.addObject("title_name",title_name); // 게시판 이름
			mav.addObject("board_chk",board_chk);             //게시판분류 (2: 자유게시판)
			mav.addObject("board_name",board_name); //게시판이름
			mav.addObject("brc_lev",session.getAttribute("brc_lev"));		//레벨(1:대리점, 2:판매점)
			
			return mav;
		}
		
		@RequestMapping("noticeReplyDelete.do")//댓글삭제
		protected ModelAndView noticeReplyDelete(@ModelAttribute BoardDto boardDto, HttpSession session){
			log.debug("---start["+"noticeAct.noticeReplyDelete"+"]");
			ModelAndView mav = new ModelAndView();
			long rp_seq = boardDto.getRp_seq();
			if(session.getAttribute("brc_id").equals(boardDto.getBrc_id())){
				boolean result = boardDao.freeBoardReplyDelete(rp_seq);
				
				if(result){
					mav.setViewName("noticeView.do"); //이동주소
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
				
			mav.addObject("title_name",title_name); // 게시판 이름
			mav.addObject("board_chk",board_chk);             //게시판분류 (2: 자유게시판)
			mav.addObject("board_name",board_name); //게시판이름
			mav.addObject("brc_lev",session.getAttribute("brc_lev"));		//레벨(1:대리점, 2:판매점)
			
			return mav;
			
		}
		
}
