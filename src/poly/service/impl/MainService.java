package poly.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import poly.dto.MainDTO;
import poly.persistance.mapper.MainMapper;
import poly.service.IMainService;

@Service("MainService")
public class MainService implements IMainService{
	
	@Resource(name="MainMapper")
	private MainMapper mainMapper;
	

}
