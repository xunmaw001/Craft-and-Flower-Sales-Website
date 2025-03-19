package com.dao;

import com.entity.GongyipinxianhuaxinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.GongyipinxianhuaxinxiVO;
import com.entity.view.GongyipinxianhuaxinxiView;


/**
 * 工艺品鲜花信息
 * 
 * @author 
 * @email 
 * @date 2021-01-22 17:18:13
 */
public interface GongyipinxianhuaxinxiDao extends BaseMapper<GongyipinxianhuaxinxiEntity> {
	
	List<GongyipinxianhuaxinxiVO> selectListVO(@Param("ew") Wrapper<GongyipinxianhuaxinxiEntity> wrapper);
	
	GongyipinxianhuaxinxiVO selectVO(@Param("ew") Wrapper<GongyipinxianhuaxinxiEntity> wrapper);
	
	List<GongyipinxianhuaxinxiView> selectListView(@Param("ew") Wrapper<GongyipinxianhuaxinxiEntity> wrapper);

	List<GongyipinxianhuaxinxiView> selectListView(Pagination page,@Param("ew") Wrapper<GongyipinxianhuaxinxiEntity> wrapper);
	
	GongyipinxianhuaxinxiView selectView(@Param("ew") Wrapper<GongyipinxianhuaxinxiEntity> wrapper);
	
}
