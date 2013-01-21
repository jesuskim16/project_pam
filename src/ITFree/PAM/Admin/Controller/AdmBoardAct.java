package ITFree.PAM.Admin.Controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import ITFree.PAM.Admin.Model.AdmBoard.admBoardDao;
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
		String board_name=board_name(board_chk);  //board_name생성		
		if (apgDto.getPg()==0)apgDto.setPg(1);	  //pg초기값설정		
		apgDto.setTotalCount(abdDao.totalCount(apgDto));	//게시물수		
		apgDto = pgCalc(apgDto);	//페이지
		
		List<admBoardDao> list = abdDao.boardList(apgDto);
		
		model.addAttribute("list",list);
		return "/WEB-INF/www/admin/board/list.jsp";		
	}
	
	private admPageDto pgCalc(admPageDto apgDto) {
		long pg = apgDto.getPg();
		long totalCount = apgDto.getTotalCount();
		int pageSize=10;
		int blockSize=10;
		
		apgDto.setStartNum((pg - 1) * pageSize + 1);
		apgDto.setEndNum(pg * pageSize);
		apgDto.setStartPage(((pg-1) / blockSize) * blockSize + 1);
		apgDto.setEndPage(((pg-1) / blockSize) * blockSize + blockSize);
		apgDto.setPageCount(totalCount / pageSize + ((totalCount % pageSize > 0)? 1 : 0));
		
		return apgDto;
	}

	@RequestMapping("admNoticeView.do")
	public String admNoticeView(){		
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
