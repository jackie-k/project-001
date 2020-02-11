package poly.service;

import poly.dto.ListDTO;

import java.util.HashMap;
import java.util.List;

public interface IListService {

    List<ListDTO> getFeaturedList() throws Exception;

    ListDTO getListDetail(String Res_name) throws Exception;

    int TotalCount() throws Exception;

    List<ListDTO> getCertainList(HashMap<String, Object> ButtonValue) throws Exception;

    int CertainCount(String ButtonValue) throws Exception;

    List<ListDTO> getSearchList(HashMap<String, String> hMap) throws Exception;

    int SearchCount(String SearchQuery) throws Exception;
}
