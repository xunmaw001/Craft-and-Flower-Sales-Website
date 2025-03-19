package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.GongyipinxianhuaxinxiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.GongyipinxianhuaxinxiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.GongyipinxianhuaxinxiView;


/**
 * 工艺品鲜花信息
 *
 * @author 
 * @email 
 * @date 2021-01-22 17:18:13
 */
public interface GongyipinxianhuaxinxiService extends IService<GongyipinxianhuaxinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<GongyipinxianhuaxinxiVO> selectListVO(Wrapper<GongyipinxianhuaxinxiEntity> wrapper);
   	
   	GongyipinxianhuaxinxiVO selectVO(@Param("ew") Wrapper<GongyipinxianhuaxinxiEntity> wrapper);
   	
   	List<GongyipinxianhuaxinxiView> selectListView(Wrapper<GongyipinxianhuaxinxiEntity> wrapper);
   	
   	GongyipinxianhuaxinxiView selectView(@Param("ew") Wrapper<GongyipinxianhuaxinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<GongyipinxianhuaxinxiEntity> wrapper);
   	
}

