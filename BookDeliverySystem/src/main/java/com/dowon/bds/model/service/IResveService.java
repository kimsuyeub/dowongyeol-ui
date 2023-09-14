package com.dowon.bds.model.service;

import java.util.List;
import java.util.Map;

/** 
 * @author 박하은
 * @since 2023.09.13
 * 도서 예약관련 메소드를 정의한 Service Interface
 */
public interface IResveService {

	public int rentStandby(int n);
	
	public int stepMinus(int n);
	
	public int resveBook(Map<String, Object> map);
	
	public int resveCancle(Map<String, Object> map);
	
	public List<Map<String, Object>> selectStep(int n);
	
	public List<Map<String, Object>> userResveStatus(int n);
}
