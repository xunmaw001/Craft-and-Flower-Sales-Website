package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscussgongyipinxianhuaxinxiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscussgongyipinxianhuaxinxiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscussgongyipinxianhuaxinxiView;


/**
 * 工艺品鲜花信息评论表
 *
 * @author 
 * @email 
 * @date 2021-01-22 17:18:13
 */
public interface DiscussgongyipinxianhuaxinxiService extends IService<DiscussgongyipinxianhuaxinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscussgongyipinxianhuaxinxiVO> selectListVO(Wrapper<DiscussgongyipinxianhuaxinxiEntity> wrapper);
   	
   	DiscussgongyipinxianhuaxinxiVO selectVO(@Param("ew") Wrapper<DiscussgongyipinxianhuaxinxiEntity> wrapper);
   	
   	List<DiscussgongyipinxianhuaxinxiView> selectListView(Wrapper<DiscussgongyipinxianhuaxinxiEntity> wrapper);
   	
   	DiscussgongyipinxianhuaxinxiView selectView(@Param("ew") Wrapper<DiscussgongyipinxianhuaxinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscussgongyipinxianhuaxinxiEntity> wrapper);
   	
}

