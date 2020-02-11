package poly.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import poly.dto.ListDTO;
import poly.dto.PagingDTO;
import poly.service.IListService;
import poly.util.CmmUtil;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Controller
public class ListController {
    private Logger log = Logger.getLogger(this.getClass());

    @Resource(name = "ListService")
    private IListService listService;



    @RequestMapping(value="searchlist")
    public String SearchList(HttpServletRequest request, Model model) throws Exception {
        String SearchQuery = CmmUtil.nvl((String) request.getParameter("SearchQuery"));
        String type = CmmUtil.nvl((String) request.getParameter("type"));

        HashMap<String, String> hMap = new HashMap<String, String>();


        log.info("original search query : " + SearchQuery);
        log.info("original type : " + type);

        //검색 쿼리 공백 제거
        SearchQuery = SearchQuery.replaceAll(" ","");
        log.info("trim search query : " + SearchQuery);

        hMap.put("SearchQuery", SearchQuery);
        hMap.put("type", type);

        List<ListDTO> lList = new ArrayList<>();

        try {
            lList = listService.getSearchList(hMap);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if(lList==null){
            lList = new ArrayList<>();
        }else{
            for(int i = 0; i<lList.size();i++){
                log.info("이름"+lList.get(i).getRes_name());
                log.info("가격"+lList.get(i).getRes_price());
                log.info("카테고리"+lList.get(i).getRes_cat());
                log.info("주소"+lList.get(i).getRes_add());
                log.info("시간"+lList.get(i).getRes_time());
                log.info("전화번호"+lList.get(i).getRes_tel());
            }
        }
        model.addAttribute("lList",lList);

        return "/list/list";
    }

    @RequestMapping(value="certainlist")
    public String CertainList(HttpServletRequest request, Model model) throws Exception {
        String ButtonValue = CmmUtil.nvl((String)request.getParameter("ButtonValue"));
        log.info(this.getClass() + " -------- button value : " + ButtonValue);

        // 페이징
        int page = Integer.parseInt(request.getParameter("Pno"));
        int listCnt = listService.CertainCount(ButtonValue); // 총 게시글 개수

        PagingDTO paging = new PagingDTO();

        paging.pageInfo(page, listCnt);
        HashMap<String, Object> hMap = new HashMap<>();
        int i = paging.getStartList();
        int j = paging.getListSize();
        hMap.put("startlist", i);
        hMap.put("listsize", i+j);
        hMap.put("ButtonValue",ButtonValue);

        log.info(page);
        log.info(i);
        log.info(i+j);
        log.info(listCnt);


        List<ListDTO> lList = new ArrayList<>();

        try {
            lList = listService.getCertainList(hMap);
        } catch (Exception e) {
            e.printStackTrace();
        }

        model.addAttribute("ButtonValue", ButtonValue);
        model.addAttribute("lList",lList);
        model.addAttribute("paging",paging);

        return "list/list";
    }

    @RequestMapping(value="featuredlist")
    public String FeaturedList(Model model) throws Exception {
        log.info(this.getClass());

        List<ListDTO> lList = new ArrayList<>();

        try {
            lList = listService.getFeaturedList();
        } catch (Exception e) {
            e.printStackTrace();
        }

        model.addAttribute("lList",lList);

        return "list/list";
    }

    @RequestMapping(value="listDetail")
    public String ListDetail(HttpServletRequest request, Model model) throws Exception {
        log.info(this.getClass());

        String Res_name = request.getParameter("res_name");

        log.info(Res_name);

        ListDTO lDTO = new ListDTO();

        try {
            lDTO = listService.getListDetail(Res_name);
        } catch (Exception e) {
            e.printStackTrace();
        }

        model.addAttribute("lDTO",lDTO);

        return "list/listDetail";
    }

}
