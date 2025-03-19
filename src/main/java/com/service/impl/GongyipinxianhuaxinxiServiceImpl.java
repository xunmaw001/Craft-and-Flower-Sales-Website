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


import com.dao.GongyipinxianhuaxinxiDao;
import com.entity.GongyipinxianhuaxinxiEntity;
import com.service.GongyipinxianhuaxinxiService;
import com.entity.vo.GongyipinxianhuaxinxiVO;
import com.entity.view.GongyipinxianhuaxinxiView;

@Service("gongyipinxianhuaxinxiService")
public class GongyipinxianhuaxinxiServiceImpl extends ServiceImpl<GongyipinxianhuaxinxiDao, GongyipinxianhuaxinxiEntity> implements GongyipinxianhuaxinxiService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<GongyipinxianhuaxinxiEntity> page = this.selectPage(
                new Query<GongyipinxianhuaxinxiEntity>(params).getPage(),
                new EntityWrapper<GongyipinxianhuaxinxiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<GongyipinxianhuaxinxiEntity> wrapper) {
		  Page<GongyipinxianhuaxinxiView> page =new Query<GongyipinxianhuaxinxiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<GongyipinxianhuaxinxiVO> selectListVO(Wrapper<GongyipinxianhuaxinxiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public GongyipinxianhuaxinxiVO selectVO(Wrapper<GongyipinxianhuaxinxiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<GongyipinxianhuaxinxiView> selectListView(Wrapper<GongyipinxianhuaxinxiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public GongyipinxianhuaxinxiView selectView(Wrapper<GongyipinxianhuaxinxiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
