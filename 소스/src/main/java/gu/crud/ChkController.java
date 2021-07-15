package gu.crud;

import java.util.List;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import gu.common.vo.SearchVO;
import gu.etc.EtcService;

@Controller 
public class ChkController {

    @Autowired
    private CrudService crudSvc;
    
    @Autowired
    private EtcService etcSvc; 
    
    static final Logger LOGGER = LoggerFactory.getLogger(CrudController.class);
    
    /**
     * 리스트.
     */
    @RequestMapping(value = "/chkList")
    public String chkList(HttpServletRequest request, SearchVO searchVO, ModelMap modelMap) {
        // 페이지 공통: alert
        String userno = request.getSession().getAttribute("userno").toString();
        
        etcSvc.setCommonAttribute(userno, modelMap);
    	
        // CRUD 관련
        searchVO.pageCalculate( crudSvc.selectCrudCount(searchVO) ); // startRow, endRow
        List<?> listview  = crudSvc.selectCrudList(searchVO);
        
        modelMap.addAttribute("searchVO", searchVO);
        modelMap.addAttribute("listview", listview);
        
        return "crud/ChkList";
    }
    /**
     * 선택된 행 삭제.
     */
    @RequestMapping(value = "/chkDelete")
    public String chkDelete(HttpServletRequest request, String[] checkRow) {
    	
        crudSvc.deleteChk(checkRow);

        return "redirect:/chkList";
    }
   
}
