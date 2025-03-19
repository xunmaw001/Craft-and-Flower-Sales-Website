package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.DiscussgongyipinxianhuaxinxiDao;
import com.entity.DiscussgongyipinxianhuaxinxiEntity;
import com.service.DiscussgongyipinxianhuaxinxiService;
import com.entity.vo.DiscussgongyipinxianhuaxinxiVO;
import com.entity.view.DiscussgongyipinxianhuaxinxiView;

@Service("discussgongyipinxianhuaxinxiService")
public class DiscussgongyipinxianhuaxinxiServiceImpl extends ServiceImpl<DiscussgongyipinxianhuaxinxiDao, DiscussgongyipinxianhuaxinxiEntity> implements DiscussgongyipinxianhuaxinxiService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscussgongyipinxianhuaxinxiEntity> page = this.selectPage(
                new Query<DiscussgongyipinxianhuaxinxiEntity>(params).getPage(),
                new EntityWrapper<DiscussgongyipinxianhuaxinxiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscussgongyipinxianhuaxinxiEntity> wrapper) {
		  Page<DiscussgongyipinxianhuaxinxiView> page =new Query<DiscussgongyipinxianhuaxinxiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiscussgongyipinxianhuaxinxiVO> selectListVO(Wrapper<DiscussgongyipinxianhuaxinxiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscussgongyipinxianhuaxinxiVO selectVO(Wrapper<DiscussgongyipinxianhuaxinxiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscussgongyipinxianhuaxinxiView> selectListView(Wrapper<DiscussgongyipinxianhuaxinxiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscussgongyipinxianhuaxinxiView selectView(Wrapper<DiscussgongyipinxianhuaxinxiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
