package com.dao;

import com.entity.DiscussgongyipinxianhuaxinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscussgongyipinxianhuaxinxiVO;
import com.entity.view.DiscussgongyipinxianhuaxinxiView;


/**
 * 工艺品鲜花信息评论表
 * 
 * @author 
 * @email 
 * @date 2021-01-22 17:18:13
 */
public interface DiscussgongyipinxianhuaxinxiDao extends BaseMapper<DiscussgongyipinxianhuaxinxiEntity> {
	
	List<DiscussgongyipinxianhuaxinxiVO> selectListVO(@Param("ew") Wrapper<DiscussgongyipinxianhuaxinxiEntity> wrapper);
	
	DiscussgongyipinxianhuaxinxiVO selectVO(@Param("ew") Wrapper<DiscussgongyipinxianhuaxinxiEntity> wrapper);
	
	List<DiscussgongyipinxianhuaxinxiView> selectListView(@Param("ew") Wrapper<DiscussgongyipinxianhuaxinxiEntity> wrapper);

	List<DiscussgongyipinxianhuaxinxiView> selectListView(Pagination page,@Param("ew") Wrapper<DiscussgongyipinxianhuaxinxiEntity> wrapper);
	
	DiscussgongyipinxianhuaxinxiView selectView(@Param("ew") Wrapper<DiscussgongyipinxianhuaxinxiEntity> wrapper);
	
}
