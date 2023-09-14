package com.dowon.bds.model.mapper;

/** 
 * @author 김지인
 * @since 2023.09.14
 * 배송지 입력 메소드를 구현한 DAO Interface implements 클래스
 */


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dowon.bds.dto.AddrDto;

@Repository
public class AddrDaoImpl implements IAddrDao {

	private final String NS = "com.dowon.bds.model.mapper.AddrDaoImpl.";
			
	@Autowired
	private final SqlSession sqlSession;
	
	 public AddrDaoImpl(SqlSession sqlSession) {
	        this.sqlSession = sqlSession;
	    }

	@Override
	public int saveAddress(AddrDto addrDto) {
		return sqlSession.insert(NS+"saveAddress", addrDto);
		}

	@Override
	public AddrDto checkAddress(String delivery_seq) {
		 return sqlSession.selectOne(NS + "checkAddress", delivery_seq);
	}

}