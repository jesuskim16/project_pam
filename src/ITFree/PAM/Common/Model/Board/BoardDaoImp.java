package ITFree.PAM.Common.Model.Board;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.util.FileCopyUtils;


@Repository
public class BoardDaoImp implements BoardDao{
private Logger log = Logger.getLogger(getClass());

	@Autowired
	private SqlMapClientTemplate sqlMapClientTemplate;
	
	//자유게시판
	@Override
	public List<BoardDto> freeBoardList(PageDto pageDto) {
		try {
			return sqlMapClientTemplate.queryForList("FreeBoard.freeBoardList", pageDto);
		} catch (DataAccessException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	@Override
	public BoardDto freeBoardView(long seq) {
		
		try {
			return (BoardDto) sqlMapClientTemplate.queryForObject("FreeBoard.freeBoardView" , seq);
		} catch (DataAccessException e) {			
			e.printStackTrace();
			return null;
		}
	}
	
	@Override
	public List<BoardDto> getReply(long seq) {
		try {
			return sqlMapClientTemplate.queryForList("FreeBoard.getReply", seq);
		} catch (DataAccessException e) {		
			e.printStackTrace();
			return null;
		}
		
	}
	
	@Override
	public boolean freeBoardReplyDelete(long seq) {
		try {
			return sqlMapClientTemplate.delete("FreeBoard.freeBoardReplyDelete", seq) > 0;
		} catch (DataAccessException e) {			
			e.printStackTrace();
			return false;
		}
		
	}
	
	@Override
	public boolean freeBoardReplyInsert(BoardDto boardDto) {
		try {
			sqlMapClientTemplate.insert("FreeBoard.freeBoardReplyInsert" , boardDto);
			return true;
		} catch (DataAccessException e) {
			e.printStackTrace();
			return false;
		}
		
	}
	
	@Override
	public boolean freeBoardUpdateAction(BoardDto boardDto) {
		
		try {
			return sqlMapClientTemplate.update("FreeBoard.freeBoardUpdateAction" , boardDto) > 0;
		} catch (DataAccessException e) {			
			e.printStackTrace();
			return false;
		}
		
	}
	
	@Override
	public boolean freeBoardDelete(BoardDto boardDto) {
		try {
			return sqlMapClientTemplate.delete("FreeBoard.freeBoardDelete" , boardDto) > 0;
		} catch (DataAccessException e) {			
			e.printStackTrace();
			return false;
		}
	}
	
	@Override
	public boolean freeBoardInsertAction(BoardDto boardDto) {
		try {
			sqlMapClientTemplate.insert("FreeBoard.freeBoardInsertAction",boardDto);
			return true;
		} catch (DataAccessException e) {
			e.printStackTrace();
			return false;
		}		
	}
	
	
	
	
	
	@Override
	public void BoardReadCount(long seq) {
		
		sqlMapClientTemplate.update("FreeBoard.BoardReadCount", seq);
		
	}
	
	@Override
	public long Next_seq(Map<String, Long> seqBd) {
		
		try {
			return (long) sqlMapClientTemplate.queryForObject("FreeBoard.Next_seq",seqBd);
		} catch (DataAccessException e) {
			e.printStackTrace();
			return 0;
		}
	}

	@Override
	public long Prev_seq(Map<String, Long> seqBd) {
		
		try {
			return (long) sqlMapClientTemplate.queryForObject("FreeBoard.Prev_seq",seqBd);
		} catch (DataAccessException e) {			
			e.printStackTrace();
			return 0;
		}
	}
	
	@Override
	public long TotalCount(PageDto pageDto) {
		try {
			return (long) sqlMapClientTemplate.queryForObject("FreeBoard.freeTotalCount", pageDto);
		} catch (DataAccessException e) {
			e.printStackTrace();
			return 0;
		}		
	}
	@Override
	public String fileupload(BoardDto bdDto, String board_name) {
		log.debug("---start["+"PriceInfoAct:"+"fileupload"+"]");
		
		InputStream is = null;
		OutputStream os = null;
		String server_root ="c:\\Documents and Settings\\A\\git\\project_pam\\WebContent";	//서버절대경로
		String upfolder = server_root+"\\upload\\"+board_name+"\\";							//업로드경로
		
		log.debug("--:"+bdDto);
		
		if(bdDto.getUpFile().isEmpty()){													//파일이 없을때
			return null;
		}
		String filename = bdDto.getUpFile().getName(); 						//컴포넌트명(input 속성)
		String originalFilename = bdDto.getUpFile().getOriginalFilename(); 	//파일명
		String contentType = bdDto.getUpFile().getContentType(); 			//컨텐트타입
		long filesize = bdDto.getUpFile().getSize(); 						//파일크기
		
		log.debug("--fileupload:"+filename+":"+originalFilename+":"+contentType+":"+filesize);
		log.debug("--upfolder+originalFilename:"+upfolder+originalFilename);
		
		try {
			if(filesize>0){					
				is=bdDto.getUpFile().getInputStream();					
				File realUploadDir = new File(upfolder);//업로드경로
					if(!realUploadDir.exists()){
						realUploadDir.mkdirs();
					}
				os = new FileOutputStream(upfolder+originalFilename);
				
				int readBytes = 0;
				byte[] buffer = new byte[8192];    //용량제한 8*1024			     
					while ((readBytes = is.read(buffer, 0, 8192))!=-1) {
						os.write(buffer, 0, readBytes);					
					}
			}
			return originalFilename;	
		} catch (IOException e) {
			e.printStackTrace();                   
			return null;
		} finally{
			try{os.close();}catch(IOException e){};
			try{is.close();}catch(IOException e){};
		}			
	}

}
