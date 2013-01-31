package ITFree.PAM.Common.Controller.Board;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import ITFree.PAM.Common.Model.Board.BoardDao;
import ITFree.PAM.Common.Model.Board.BoardDto;
import ITFree.PAM.Common.Model.Board.PageDto;

@Controller
public class PriceInfoAct {
	private Logger log = Logger.getLogger(getClass());
	private int board_chk = 3;
	private String board_name = "priceInfo";	
	private String title_name = "PAM::단가표";	

	@Autowired
	private BoardDao bdDao;		

		@RequestMapping("/priceInfoList.do")	//리스트 폼
		protected String priceInfoList(Model model, @ModelAttribute PageDto pgDto, HttpSession session){
			log.debug("---start["+"PriceInfoAct."+"priceInfoList"+"]");
			if(pgDto.getPg() == 0)pgDto.setPg(1);
			pgDto.setBoard_chk(board_chk);				//TotalCount를 얻기위한 게시판코드(tw)
			PageDto pageDto = new PageDto(pgDto.getPg(), bdDao.TotalCount(pgDto), pgDto.getSearchCondition(), pgDto.getSearchKeyword(),board_name+"List.do");
			pageDto.setSearchCondition(pgDto.getSearchCondition());
			pageDto.setSearchKeyword(pgDto.getSearchKeyword());
			pageDto.setBoard_chk(board_chk);
			List<BoardDto> fbList = bdDao.freeBoardList(pageDto);			
			log.debug("--pricdInfoList:"+pageDto);
			model.addAttribute("title_name", title_name);
			model.addAttribute("board_chk", board_chk);  					//게시판분류 (3: 단가표)
			model.addAttribute("board_name", board_name); 					//게시판이름
			model.addAttribute("brc_lev", session.getAttribute("brc_lev"));	//레벨(1:대리점, 2:판매점)			
			model.addAttribute("fbList", fbList); 							//리스트
			model.addAttribute("pageDto", pageDto);							//페이지정보
			model.addAttribute("page", pageDto.getpHtml());						// 게시판 아래 페이징을 하기위해 페이지정보를 넘김
			
			model.addAttribute("board_name", board_name);
			
			return "/WEB-INF/www/common/board/boardList.jsp";
		}

		@RequestMapping("/priceInfoInsert.do")	//입력 폼
		protected String priceInfoInsert(Model model, HttpSession session){
			log.debug("---start["+"PriceInfoAct:"+"priceInfoInsert"+"]");
			
			model.addAttribute("title_name", title_name);
			model.addAttribute("board_chk", board_chk);             			//게시판분류 (3: 단가표)
			model.addAttribute("board_name", board_name); 					//게시판이름
			model.addAttribute("brc_lev", session.getAttribute("brc_lev"));	//레벨(세션)
			model.addAttribute("brc_id", session.getAttribute("brc_id"));	//아이디(세션)			
			return "/WEB-INF/www/common/board/boardInsert.jsp";
		}

		@RequestMapping("/priceInfoInsertAction.do")//입력
		protected ModelAndView priceInfoInsertAction(@ModelAttribute BoardDto bdDto, HttpSession session, HttpServletRequest request){			
			log.debug("---start["+"PriceInfoAct:"+"priceInfoInsertAction"+"]");			
			bdDto.setBoard_chk(board_chk);							//게시판분류코드
			bdDto.setContent("-");									//내용 NN이므로 임의 입력
			bdDto.setWrite_ip(request.getRemoteAddr());				//작성아이피

			String server_root ="c:\\Documents and Settings\\A\\git\\project_pam\\WebContent";	//서버절대경로
			String upfolder = server_root+"\\upload\\"+board_name+"\\";							//업로드경로
			
			MultipartFile Mfile = bdDto.getUpFile();	// 	MultipartFile Mfile에 Web에서 넘어온 file type 값을 가져온다.

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
					bdDto.setFilename(filename);
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

			} else {
				mav.setViewName("/WEB-INF/www/common/result.jsp");
				mav.addObject("msg" , "파일을 입력해주세요");
				mav.addObject("url" ,"javascript:history.back();");
				return mav;
			}
			
			boolean result = bdDao.freeBoardInsertAction(bdDto);	//SQL Insert				
			if(result){
				mav.addObject("title_name",title_name);
				mav.addObject("board_chk",board_chk);          			//게시판분류 (3: 단가표)
				mav.addObject("board_name",board_name); 					//게시판이름
				mav.addObject("brc_lev",session.getAttribute("brc_lev"));	//레벨(1:대리점, 2:판매점)
				mav.setViewName("priceInfoList.do");
				return mav;
			}else{				
				mav.addObject("msg","[Error]관리자에게 문의하세요.");
				mav.addObject("url","javascript:history.back();");
				mav.setViewName("/WEB-INF/www/common/result.jsp");
				return mav;
			}
		}

		@RequestMapping("/priceInfoUpdate.do")
		protected ModelAndView priceInfoUpdate(HttpServletRequest requset,
				HttpServletResponse response, HttpSession session){
			log.debug("---start["+"PriceInfoAct:"+"priceInfoUpdate"+"]");
			
			ModelAndView mav = new ModelAndView();
			mav.setViewName("/WEB-INF/www/common/board/boardUpdate.jsp");
			mav.addObject("title_name",title_name);
			mav.addObject("board_chk",board_chk);             				//게시판분류 (3: 단가표)
			mav.addObject("board_name",board_name); 						//게시판이름
			mav.addObject("brc_lev",session.getAttribute("brc_lev"));		//레벨(1:대리점, 2:판매점)
			return mav;
		}
		
		@RequestMapping("/priceInfoDelete.do")
		protected ModelAndView priceInfoDelete(HttpServletRequest requset,
				HttpServletResponse response, HttpSession session){
			log.debug("---start["+"PriceInfoAct:"+"priceInfoDelete"+"]");
			
			ModelAndView mav = new ModelAndView();
			mav.setViewName("/WEB-INF/www/common/board/boardList.jsp");
			mav.addObject("title_name",title_name);
			mav.addObject("board_chk",board_chk);             //게시판분류 (3: 단가표)
			mav.addObject("board_name",board_name); //게시판이름
			mav.addObject("brc_lev",session.getAttribute("brc_lev"));		//레벨(1:대리점, 2:판매점)
			return mav;
		}
	   
}
