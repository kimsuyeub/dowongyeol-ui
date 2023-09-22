package com.dowon.bds;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dowon.bds.dto.AddrDto;
import com.dowon.bds.dto.BookDto;
import com.dowon.bds.dto.UserDto;
import com.dowon.bds.model.service.IRentService;
import com.dowon.bds.model.service.IResveService;

import lombok.extern.slf4j.Slf4j;


/** 
 * @author 박하은
 * @since 2023.09.13
 * 도서 대출관련 Controller
 * 
 * @author 김지인
 * @since 2023.09.15
 * 배송상태확인 버튼 구현
 * 배송지 조회 구현
 */
@Controller
@Slf4j
public class RentController {

	
	@Autowired
	private IRentService rentService;
	
	@Autowired
	private IResveService resveService;
	

	
	@GetMapping("/userRentList.do")
	public String userRentList(HttpSession session, Model model, HttpServletResponse response) {
		log.info("Welcome RentController userRentList 회원의 마이페이지-대출도서목록에 들어갈 페이지 컨트롤러");
		UserDto loginDto = (UserDto) session.getAttribute("loginDto");
//		AddrDto addrDto = new AddrDto();
//		session.setAttribute("addrDto", addrDto);
	    if (loginDto != null) {
	        int user_seq = loginDto.getUser_seq();
	        List<Map<String, Object>> lists = rentService.selectMyBookRent(user_seq);
	        model.addAttribute("userRentList", lists);
	        model.addAttribute("seq", user_seq);
	        return "userRentList";
	    } else {
	        return "redirect:/loginPage.do";
	    }
	    
	}

	//원래 컨트롤러(나중에 삭제할것)
	@GetMapping("/oldAdminRentList.do")
	public String oldAdminRentList(Model model) {
		log.info("Welcome RentController adminRentList 관리자페이지-회원도서대출목록 에 들어갈 페이지 컨트롤러");
		List<Map<String, Object>> lists = rentService.selectAdminRent();
		model.addAttribute("lists",lists);
		return "adminRentList";
	}
	
	
	//관리자 ajax 대출관리
    @GetMapping("/adminRentList.do")
    @ResponseBody
    public Map<String, Object> adminRentList(Model model) {
        Map<String, Object> response = new HashMap<>();
        List<Map<String, Object>> lists = rentService.selectAdminRent();
        response.put("lists", lists);
        return response;
    }
	
	
	
	
	
	
	
	 @PostMapping("/confirmReturn.do")
	 @ResponseBody
	 public String confirmReturn(@RequestParam("rentSeq") int rentSeq, Model model) {
	     log.info("Welcome RentController confirmReturn 관리자의 도서대출 반납처리 AJAX Controller"); 
		 try {
	         int rowsAffected = rentService.rentStatus(rentSeq);
	            
	         if (rowsAffected > 0) {
	              return "success";
	         }else {
	            return "error";
	           }
	        }catch (Exception e) {
	            e.printStackTrace();
	            return "error";
	        }
	    }
	 
	 @PostMapping("/rentStandby.do")
	 @ResponseBody
	 public String rentStandby(@RequestParam("bookSeq") int bookSeq, Model model) {
		 log.info("Welcome RentController rentStandby 예약도서 반납완료시 예약순번 가장 빠른회원 대출대기 상태 업데이트 AJAX Controller");
	     int success = resveService.rentStandby(bookSeq);

	     if (success > 0) {
	         return "success";
	     } else {
	         return "no_reservation"; // 예약이 없을 때
	     }
	 }
	 

	
/*
 * 김지인 
 * 23.09.18 배송지 조회를 위한 컨트롤러 작성
 * 23.09.21 window.open으로 변경하여 삭제
 * 
 */
	

}
