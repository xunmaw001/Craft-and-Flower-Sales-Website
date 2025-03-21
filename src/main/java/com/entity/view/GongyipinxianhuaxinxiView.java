package com.entity.view;

import com.entity.GongyipinxianhuaxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 工艺品鲜花信息
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-01-22 17:18:13
 */
@TableName("gongyipinxianhuaxinxi")
public class GongyipinxianhuaxinxiView  extends GongyipinxianhuaxinxiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public GongyipinxianhuaxinxiView(){
	}
 
 	public GongyipinxianhuaxinxiView(GongyipinxianhuaxinxiEntity gongyipinxianhuaxinxiEntity){
 	try {
			BeanUtils.copyProperties(this, gongyipinxianhuaxinxiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
