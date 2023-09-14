package com.dowon.bds.model.mapper;

import java.util.List;
import java.util.Map;

import com.dowon.bds.dto.BookDto;


/** 
 * @author 박하은
 * @since 2023.09.13
 * 도서 대출관련 메소드를 정의한 DAO Interface
 */
public interface IRentDao {
	
	public int bookRent(Map<String, Object>map);
	
	public List<Map<String, Object>> rentCheck(int n);
	
	public List<Map<String, Object>> selectMyBookRent(int n);
	
	public List<Map<String, Object>> selectAdminRent();
	
	public List<Map<String, Object>> selectRentImpossibility();
	
	
	public int rentStatus(int n);
	
	
	public BookDto bookDetail(int n);
	
	public List<BookDto> bookAll();
	
}