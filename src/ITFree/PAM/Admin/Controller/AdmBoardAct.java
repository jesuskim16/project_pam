package ITFree.PAM.Admin.Controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import ITFree.PAM.Admin.Model.AdmBoard.admBoardDao;
import ITFree.PAM.Admin.Model.AdmBoard.admBoardDto;
import ITFree.PAM.Admin.Model.AdmBoard.admPageDto;



@Controller
public class AdmBoardAct {
	private Logger log = Logger.getLogger(getClass());
	@Autowired
	private admBoardDao abdDao;
	
	@RequestMapping("admNoticeList.do")
	public String admNoticeList(Model model, @ModelAttribute admPageDto apgDto){
		log.debug("---start["+"AdmBoardAct."+"admNoticeList"+"]");		
		int board_chk = apgDto.getBoard_chk();
		String board_name = board_name(board_chk);  		//board_name생성		
		if (apgDto.getPg()==0)apgDto.setPg(1);	  			//pg초기값설정
		model.addAttribute("p",apgDto);
		return "/WEB-INF/www/admin/board/list.jsp";		
	}	
	
	@RequestMapping("ajaxList.do")
	public ModelAndView ajaxList(ModelAndView mav, int board_chk, String page){				
		log.debug("---start["+"AdmBoardAct."+"ajaxList"+"]");
		admPageDto apgDto = new admPageDto();	
		int pg = Integer.parseInt(page);
		if (pg==0){apgDto.setPg(1);}else{apgDto.setPg(pg);}	//pg초기값설정
		if (board_chk==0) board_chk=1;
		String board_name = board_name(board_chk);  		//board_name생성		
		
		apgDto.setBoard_chk(board_chk);
		
		apgDto.setTotalCount(abdDao.totalCount(apgDto));	//게시물수		
		apgDto = pgCalc(apgDto);							//페이지
		
		List<admBoardDto> list = abdDao.boardList(apgDto);
		log.debug("--apgDto:"+apgDto);
	
		mav.setViewName("/WEB-INF/www/admin/board/ajaxList.jsp");
		mav.addObject("list",list);
		mav.addObject("p",apgDto);
		return mav;
	}
	
	private admPageDto pgCalc(admPageDto apgDto) {
		long pg = apgDto.getPg();
		long totalCount = apgDto.getTotalCount();
		int pageSize=10;
		int blockSize=10;
		
		
		apgDto.setPageCount(totalCount / pageSize + ((totalCount % pageSize > 0)? 1 : 0));
		apgDto.setPageSize(pageSize);
		apgDto.setBlockSize(blockSize);
		apgDto.setStartNum((pg - 1) * pageSize + 1);
		apgDto.setEndNum(pg * pageSize );
		apgDto.setStartPage(((pg-1) / blockSize) * blockSize + 1);
		if(apgDto.getPageCount() < (((pg-1) / blockSize) * blockSize + blockSize)){
		apgDto.setEndPage(apgDto.getPageCount());	
		}else{	
		apgDto.setEndPage(((pg-1) / blockSize) * blockSize + blockSize);
		}		
		
		return apgDto;
	}
	
	@RequestMapping("admNoticeView.do")
	public String admNoticeView(Model model, String seq){
		int iSeq = Integer.parseInt(seq);
		admBoardDto abdDto = new admBoardDto(); 
		abdDto = abdDao.boardView(iSeq);
		
		model.addAttribute("abdDto",abdDto);
		return "/WEB-INF/www/admin/board/view.jsp";		
	}
	
	@RequestMapping("admNoticeInsert.do")
	public String admNoticeInsert(){		
		return "/WEB-INF/www/admin/board/insert.jsp";		
	}

	public String board_name(int board_chk){
		String board_name = null;
		if(board_chk==1){
			board_name="notice";
		}else if(board_chk==2){
			board_name="freeBoard";
		}else if(board_chk==3){
			board_name="priceInfo";
		}
		return board_name;
	}
}
