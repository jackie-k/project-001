package poly.service.impl;

import org.springframework.stereotype.Service;
import poly.dto.ListDTO;
import poly.persistance.mapper.ListMapper;
import poly.service.IListService;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;

@Service("ListService")
public class ListService implements IListService {

    @Resource(name="ListMapper")
    private ListMapper listMapper;

    @Override
    public List<ListDTO> getSearchList(HashMap<String, String> hMap) throws Exception {
        return listMapper.getSearchList(hMap);
    }

    @Override
    public List<ListDTO> getFeaturedList() throws Exception {
        return listMapper.getFeaturedList();
    }

    @Override
    public ListDTO getListDetail(String Res_name) throws Exception {
        return listMapper.getListDetail(Res_name);
    }

    @Override
    public int TotalCount() throws Exception {
        return listMapper.TotalCount();
    }

    @Override
    public List<ListDTO> getCertainList(HashMap<String, Object> ButtonValue) throws Exception {
        return listMapper.getCertainList(ButtonValue);
    }

    @Override
    public int CertainCount(String ButtonValue) throws Exception {
        return listMapper.CertainCount(ButtonValue);
    }

    @Override
    public int SearchCount(String SearchQuery) throws Exception {
        return listMapper.SearchCount(SearchQuery);
    }


}
