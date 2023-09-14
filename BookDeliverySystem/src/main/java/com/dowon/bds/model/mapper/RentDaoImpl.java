package com.dowon.bds.model.mapper;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dowon.bds.dto.BookDto;


/** 
 * @author 박하은
 * @since 2023.09.13
 * 도서 대출관련 메소드를 구현한 DAO Interface implements 클래스
 */
@Repository
public class RentDaoImpl implements IRentDao {

	private final String NS = "com.dowon.bds.model.mapper.RentDaoImpl.";
	
	@Autowired
	private SqlSessionTemplate session;
	
	
	@Override
	public int bookRent(Map<String, Object> map) {
		return session.insert(NS+"bookRent",map);
	}

	@Override
	public List<Map<String, Object>> rentCheck(int n) {
		return session.selectList(NS+"rentCheck",n);
	}
	
	@Override
	public List<Map<String, Object>>  selectMyBookRent(int n) {
		return session.selectList(NS+"selectMyBookRent",n);
	}

	@Override
	public List<Map<String, Object>> selectAdminRent() {
		return session.selectList(NS+"selectAdminRent");
	}

	@Override
	public List<Map<String, Object>> selectRentImpossibility() {
		return session.selectList(NS+"selectRentImpossibility");
	}

	
	
	
	
	@Override
	public int rentStatus(int n) {
		return session.update(NS+"rentStatus",n);
	}

	
	
	@Override
	public BookDto bookDetail(int n) {
		return session.selectOne(NS+"bookDetail",n);
	}

	@Override
	public List<BookDto> bookAll() {
		return session.selectList(NS+"bookAll");
	}
	
}