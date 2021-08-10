package gu.main;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import gu.admin.board.BoardGroupVO;
import gu.board.BoardSearchVO;
import gu.board.BoardService;
import gu.common.MakeExcel;
import gu.common.Util4calen;
import gu.etc.EtcService;


@Controller 
public class SampleController {
    
    @Autowired
    private SampleService sampleSvc;
    
    @Autowired
    private EtcService etcSvc;

    @Autowired
    private BoardService boardSvc;
    
    /**
     * 조직도/사용자 선택 샘플. 
     */
    @RequestMapping(value = "/sample1")
    public String sample1(HttpServletRequest request, ModelMap modelMap) {
        String userno = request.getSession().getAttribute("userno").toString();
        
        etcSvc.setCommonAttribute(userno, modelMap);
        
        return "main/sample1";
    }

    /**
     * 날짜 선택 샘플. 
     */
    @RequestMapping(value = "/sample2")
    public String sample2(HttpServletRequest request, ModelMap modelMap) {
        String userno = request.getSession().getAttribute("userno").toString();
        
        etcSvc.setCommonAttribute(userno, modelMap);
        // -----------------------------------------
        
        String today = Util4calen.date2Str(Util4calen.getToday());
        
        modelMap.addAttribute("today", today);
        return "main/sample2";
    }

    /**
     * 챠트 사용 샘플. 
     */
    @RequestMapping(value = "/sample3")
    public String sample3(HttpServletRequest request, ModelMap modelMap) {
        String userno = request.getSession().getAttribute("userno").toString();
        
        etcSvc.setCommonAttribute(userno, modelMap);
        // -----------------------------------------
        
        List<?> listview = sampleSvc.selectBoardGroupCount4Statistic();
        modelMap.addAttribute("listview", listview);
        
        return "main/sample3";
    }
    
    /**
     * List & Excel 사용 샘플. 
     */
    @RequestMapping(value = "/sample4")
    public String sample4(HttpServletRequest request, BoardSearchVO searchVO, ModelMap modelMap) {
        String userno = request.getSession().getAttribute("userno").toString();
        
        etcSvc.setCommonAttribute(userno, modelMap);
        // -----------------------------------------
        
        searchVO.pageCalculate( boardSvc.selectBoardCount(searchVO) ); // startRow, endRow
        List<?> listview  = boardSvc.selectBoardList(searchVO);
        
        modelMap.addAttribute("searchVO", searchVO);
        modelMap.addAttribute("listview", listview);
        
        return "main/sample4";
    }
    
    /**
     * List & Excel 사용 샘플.
     * Excel 생성 및 다운로드.
     */
    @RequestMapping(value = "/sample4Excel")
    public void sample4Excel(HttpServletRequest request, HttpServletResponse response, BoardSearchVO searchVO) {
       
        // 게시판은 페이징 처리를 하지만 엑셀은 모든 데이터를 다운로드
        List<?> listview  = boardSvc.selectBoardList(searchVO);
        
        Map<String , Object> beans = new HashMap<String , Object>();
        beans.put("listview" , listview );
        
        MakeExcel me = new MakeExcel();
        me.download(request, response, beans, me.get_Filename("project9"), "board.xlsx");
    }    
}
