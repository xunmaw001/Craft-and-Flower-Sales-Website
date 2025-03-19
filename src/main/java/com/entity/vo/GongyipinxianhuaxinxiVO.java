package com.entity.vo;

import com.entity.GongyipinxianhuaxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
 

/**
 * 工艺品鲜花信息
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2021-01-22 17:18:13
 */
public class GongyipinxianhuaxinxiVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 花材选择
	 */
	
	private String huacaixuanze;
		
	/**
	 * 图片
	 */
	
	private String tupian;
		
	/**
	 * 材料
	 */
	
	private String cailiao;
		
	/**
	 * 相关花语
	 */
	
	private String xiangguanhuayu;
		
	/**
	 * 鲜花用途
	 */
	
	private String xianhuayongtu;
		
	/**
	 * 赠送对象
	 */
	
	private String zengsongduixiang;
		
	/**
	 * 商品详情
	 */
	
	private String shangpinxiangqing;
		
	/**
	 * 最近点击时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date clicktime;
		
	/**
	 * 点击次数
	 */
	
	private Integer clicknum;
		
	/**
	 * 积分
	 */
	
	private Integer jifen;
		
	/**
	 * 价格
	 */
	
	private Float price;
				
	
	/**
	 * 设置：花材选择
	 */
	 
	public void setHuacaixuanze(String huacaixuanze) {
		this.huacaixuanze = huacaixuanze;
	}
	
	/**
	 * 获取：花材选择
	 */
	public String getHuacaixuanze() {
		return huacaixuanze;
	}
				
	
	/**
	 * 设置：图片
	 */
	 
	public void setTupian(String tupian) {
		this.tupian = tupian;
	}
	
	/**
	 * 获取：图片
	 */
	public String getTupian() {
		return tupian;
	}
				
	
	/**
	 * 设置：材料
	 */
	 
	public void setCailiao(String cailiao) {
		this.cailiao = cailiao;
	}
	
	/**
	 * 获取：材料
	 */
	public String getCailiao() {
		return cailiao;
	}
				
	
	/**
	 * 设置：相关花语
	 */
	 
	public void setXiangguanhuayu(String xiangguanhuayu) {
		this.xiangguanhuayu = xiangguanhuayu;
	}
	
	/**
	 * 获取：相关花语
	 */
	public String getXiangguanhuayu() {
		return xiangguanhuayu;
	}
				
	
	/**
	 * 设置：鲜花用途
	 */
	 
	public void setXianhuayongtu(String xianhuayongtu) {
		this.xianhuayongtu = xianhuayongtu;
	}
	
	/**
	 * 获取：鲜花用途
	 */
	public String getXianhuayongtu() {
		return xianhuayongtu;
	}
				
	
	/**
	 * 设置：赠送对象
	 */
	 
	public void setZengsongduixiang(String zengsongduixiang) {
		this.zengsongduixiang = zengsongduixiang;
	}
	
	/**
	 * 获取：赠送对象
	 */
	public String getZengsongduixiang() {
		return zengsongduixiang;
	}
				
	
	/**
	 * 设置：商品详情
	 */
	 
	public void setShangpinxiangqing(String shangpinxiangqing) {
		this.shangpinxiangqing = shangpinxiangqing;
	}
	
	/**
	 * 获取：商品详情
	 */
	public String getShangpinxiangqing() {
		return shangpinxiangqing;
	}
				
	
	/**
	 * 设置：最近点击时间
	 */
	 
	public void setClicktime(Date clicktime) {
		this.clicktime = clicktime;
	}
	
	/**
	 * 获取：最近点击时间
	 */
	public Date getClicktime() {
		return clicktime;
	}
				
	
	/**
	 * 设置：点击次数
	 */
	 
	public void setClicknum(Integer clicknum) {
		this.clicknum = clicknum;
	}
	
	/**
	 * 获取：点击次数
	 */
	public Integer getClicknum() {
		return clicknum;
	}
				
	
	/**
	 * 设置：积分
	 */
	 
	public void setJifen(Integer jifen) {
		this.jifen = jifen;
	}
	
	/**
	 * 获取：积分
	 */
	public Integer getJifen() {
		return jifen;
	}
				
	
	/**
	 * 设置：价格
	 */
	 
	public void setPrice(Float price) {
		this.price = price;
	}
	
	/**
	 * 获取：价格
	 */
	public Float getPrice() {
		return price;
	}
			
}
