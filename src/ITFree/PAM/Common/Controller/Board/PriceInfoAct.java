package ITFree.PAM.Common.Controller.Board;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
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
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import ITFree.PAM.Common.Model.Board.BoardDao;
import ITFree.PAM.Common.Model.Board.BoardDto;
import ITFree.PAM.Common.Model.Board.PageDto;
@SessionAttributes("brc_lev")
@Controller
public class PriceInfoAct {	
	private Logger log = Logger.getLogger(getClass());
	private int board_chk = 3;
	private String board_name = "priceInfo";	
	private String title_name = "PAM::단가표";	
	
	@Autowired
	private BoardDao bdDao;		
	
		@RequestMapping("/priceInfoList.do")
		protected String priceInfoList(Model model, @ModelAttribute PageDto pgDto, HttpSession session){
			
			if(pgDto.getPg() == 0)pgDto.setPg(1);

			PageDto pageDto = new PageDto(pgDto.getPg(), bdDao.TotalCount(pgDto), pgDto.getSearchCondition(), pgDto.getSearchKeyword());
			pageDto.setSearchCondition(pgDto.getSearchCondition());
			pageDto.setSearchKeyword(pgDto.getSearchKeyword());
			List<BoardDto> fbList = bdDao.freeBoardList(pageDto);			
			
			model.addAttribute("title_name",title_name);
			model.addAttribute("board_chk",board_chk);             //게시판분류 (3: 단가표)
			model.addAttribute("board_name",board_name); //게시판이름
			model.addAttribute("brc_lev",session.getAttribute("brc_lev"));		//레벨(1:대리점, 2:판매점)			
			model.addAttribute("fbList",fbList); 
			model.addAttribute("pageDto", pageDto);
			model.addAttribute("page" ,pageDto.getpHtml());
			return "/WEB-INF/www/common/board/boardList.jsp";
		}
		
		@RequestMapping("/priceInfoInsert.do")
		protected String priceInfoInsert(Model model, HttpSession session, HttpServletRequest request){
			
			int brc_lev = (int) session.getAttribute("brc_lev");
			String brc_id = (String) session.getAttribute("brc_id");			
			String write_ip = request.getRemoteAddr();
			
			model.addAttribute("title_name",title_name);
			model.addAttribute("board_chk",board_chk);             //게시판분류 (3: 단가표)
			model.addAttribute("board_name",board_name); //게시판이름
			model.addAttribute("brc_lev",brc_lev);		//레벨(1:대리점, 2:판매점)
			model.addAttribute("brc_id",brc_id);
			model.addAttribute("write_ip",write_ip);
			return "/WEB-INF/www/common/board/boardInsert.jsp";
		}
		
		@RequestMapping("/priceInfoInsertAction.do")
		protected String priceInfoInsertAction(@ModelAttribute BoardDto bdDto, Model model, HttpSession session){
			log.debug("-=-=-="+bdDto);
			bdDto.setContent(board_name);
			fileupload(bdDto);
			boolean result = bdDao.freeBoardInsertAction(bdDto);			
			if(result){
				model.addAttribute("title_name",title_name);
				model.addAttribute("board_chk",board_chk);             //게시판분류 (3: 단가표)
				model.addAttribute("board_name",board_name); //게시판이름
				model.addAttribute("brc_lev",session.getAttribute("brc_lev"));		//레벨(1:대리점, 2:판매점)
				return "priceInfoList.do";
			}else{				
				model.addAttribute("msg","[Error]관리자에게 문의하세요.");
				model.addAttribute("url","javascript:history.back();");
				return "/WEB-INF/www/common/result.jsp";
			}
		}
		
		protected boolean fileupload(@ModelAttribute BoardDto bdDto){
			String filename = bdDto.getFilename().getName(); // 컴포넌트명
			String originalFilename = bdDto.getFilename().getOriginalFilename(); //파일명
			String contentType = bdDto.getFilename().getContentType(); //컨텐트타입
			long filesize = bdDto.getFilename().getSize(); //파일크기
			InputStream is = null;
			OutputStream os = null;
			try {
				if(filesize>0){
					is=bdDto.getFilename().getInputStream();
					File realUploadDir = new File("/www/upload//");//업로드경로
					if(!realUploadDir.exists()){
						realUploadDir.mkdirs();
					}
					os = new FileOutputStream("/www/upload/"+originalFilename);
					
					int realBytes = 0;
					byte[] buffer = new byte[8192];					
				}
				return true;	
			} catch (Exception e) {
				return false;
			} finally{
				try{os.close();}catch(IOException e){};
				try{is.close();}catch(IOException e){};
			}			
		}

		@RequestMapping("/priceInfoUpdate.do")
		protected ModelAndView priceInfoUpdate(HttpServletRequest requset,
				HttpServletResponse response) throws Exception {
			
			ModelAndView mav = new ModelAndView();
			mav.setViewName("/WEB-INF/www/common/board/boardUpdate.jsp");
			mav.addObject("title_name","PAM::단가표");
			mav.addObject("board_chk","3");             //게시판분류 (3: 단가표)
			mav.addObject("board_name","priceInfo"); //게시판이름
			mav.addObject("brc_lev","1");		//레벨(1:대리점, 2:판매점)
			return mav;
		}
		
		@RequestMapping("/priceInfoDelete.do")
		protected ModelAndView priceInfoDelete(HttpServletRequest requset,
				HttpServletResponse response) throws Exception {
			
			ModelAndView mav = new ModelAndView();
			mav.setViewName("/WEB-INF/www/common/board/boardList.jsp");
			mav.addObject("title_name","PAM::단가표");
			mav.addObject("board_chk","3");             //게시판분류 (3: 단가표)
			mav.addObject("board_name","priceInfo"); //게시판이름
			mav.addObject("brc_lev","1");		//레벨(1:대리점, 2:판매점)
			return mav;
		}		
		
}
