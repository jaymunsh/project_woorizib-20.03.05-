package spring.mvc.woorizib.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import spring.mvc.woorizib.service.Service_Admin;
import spring.mvc.woorizib.service.Service_All;
import spring.mvc.woorizib.service.Service_Member;
import spring.mvc.woorizib.vo.VO_Comments;


@Controller
public class Controller_Member {
	
private static final Logger logger = LoggerFactory.getLogger(Controller_Member.class);
	
	@Autowired
	Service_Member serviceMember;

	/* 전영현 2020.02.13 */
	
	@RequestMapping("all_updateMember.all")
	public String updateMember(HttpServletRequest req, Model model) {
		logger.info("▶ /updateMember.cust");
		serviceMember.modifyView(req,model);
		return "updateMember";
	}
	
	//회원정보 수정 처리 
	@RequestMapping("/updateMemberPro.cust")
	public String updateMemberPro(HttpServletRequest req, Model model) {
		logger.info("▶ /updateMemberPro.cust");
		serviceMember.updateMemberPro(req,model);
		return "updateMemberPro";
	}
	
	//회원탈퇴화면
	@RequestMapping("all_deleteMember.all")
	public String deleteMemeber(HttpServletRequest req, Model model) {
		logger.info("▶ /deleteMember.cust");
		return "deleteMember";
	}
	
	//회원 탈퇴 처리 
	@RequestMapping("/deleteMemberPro.cust")
	public String deleteMemberPro(HttpServletRequest req, Model model) {
		logger.info("▶ /deleteMemberPro.cust");
		serviceMember.deleteMemberPro(req,model);
		return "deleteMemberPro";
	}
	
	/* 전영현 2020.02.13 */
	
	
	// 전영현 2020.02.23
		// 질문 게시판 쓰기 화면
		@RequestMapping("/qnaform.cust")
		public String qnaform(HttpServletRequest req, Model model) {
			logger.info("▶ /qnaform.cust");

			int qna_number = 0;
			int pageNum = 0;

			// pageNum=Integer.parseInt(req.getParameter("pageNum"));

			logger.info("qnaform");
			// 6단계 request나 session에 처리 결과를 저장(jsp에 전달하기 위함)
			model.addAttribute("qna_number", qna_number);
			model.addAttribute("pageNum", pageNum);

			return "member/qnaform";
		}

		// 질문 게시판 글 쓰기 처리
		@RequestMapping("/qnaPro.cust")
		public String writePro(HttpServletRequest req, Model model) {
			logger.info("▶ /qnaPro.cust");
			serviceMember.qnawritePro(req, model);
			return "member/qnaPro";
		}

		// 질문 게시판 내용 보기(상세페이지)
		@RequestMapping("/qnacontent.cust")
		public String qnacontent(HttpServletRequest req, Model model) {
			logger.info("▶ /qnacontent.cust");
			serviceMember.qnacontent(req, model);
			return "member/qnacontent";
		}

		// 글 수정 상세 페이지
		@RequestMapping("/qnamodifyView.cust")
		public String qnamodifyView(HttpServletRequest req, Model model) {
			logger.info("▶ /qnamodifyView.cust");
			serviceMember.qnamodifyView(req, model);
			
			return "member/qnamodifyView";
		}

		// 글 수정 처리
		@RequestMapping("/qnamodifyPro.cust")
		public String qnamodifyPro(HttpServletRequest req, Model model) {
			logger.info("▶ /qnamodifyPro.cust");
			serviceMember.qnamodifyPro(req, model);
			return "member/qnamodifyPro";
		}

		// 글 삭제 처리
		@RequestMapping("/qnadeletePro.cust")
		public String qnadeletePro(HttpServletRequest req, Model model) {
			logger.info("▶ /qnadeletePro.cust");
			serviceMember.qnadeletePro(req, model);
			return "member/qnadeletePro";
		}

		// 댓글 추가 
		@RequestMapping("/commentwritePro.all")
		@ResponseBody
		public void qnacomment(HttpServletRequest req, Model model) {
			logger.info("▶ /commentwritePro.all"); 
			serviceMember.commentwritePro(req,model);
			return;
		}
		
		//댓글 리스트 
		@RequestMapping("/commentList.all")
		@ResponseBody
		public ArrayList<VO_Comments> qnacommentList(HttpServletRequest req, Model model) {
			
			logger.info("▶ /commentList.all");

			return serviceMember.commentList(req,model);
		}
		
		
		
		
		/*박은슬 경매 결제 시작*/
		@RequestMapping("/member_auctionPayment.mem")
		public String member_auctionPayment(HttpServletRequest req, Model model) {
			logger.info("url ==> /auctionPayment");
			
			serviceMember.auctionPayment(req,model);
			return "/member/member_auctionPayment";
		}
		
		@RequestMapping("/member_auctionpayPro.mem")
		public String member_auctionpayPro(HttpServletRequest req, Model model) {
			logger.info("url ==> /auctionpayPro");
			serviceMember.auctionpayPro(req,model);
			return "/member/member_auctionpayPro";
		}
		/*박은슬 경매 결제 종료*/
		
		
		/* 20.03.03 - 문성혁, 블록체인 적용 결제 테스트용 */
//		//매물상세페이지
//		@RequestMapping("/member_propertyDetail.mem")
//		public String member_propertyDetail(HttpServletRequest req, Model model) {
//			logger.info("▶ /member_propertyDetail.mem");
//			return "/member/member_propertyDetail";
//		}
//		//계약서(window.open)
//		@RequestMapping("/member_propertyContract.mem")
//		public String member_propertyContract(HttpServletRequest req, Model model) {
//			logger.info("▶ /member_propertyContract.mem");
//			return "/member/member_propertyContract";
//		}
//		//계약서 작성 처리
//		@RequestMapping("/member_signMonthlyContract.mem")
//		public String member_signContract(HttpServletRequest req, Model model) {
//			logger.info("▶ /member_signContract.mem");
//			return "/member/member_signContract";
//		}
		
		//테스트 - 계약서
		@RequestMapping("/member_testContract.mem")
		public String member_testContract(HttpServletRequest req, Model model) {
			logger.info("▶ /member_testContract.mem");
			return "/member/member_testContract";
		}
		@RequestMapping("/member_testSignContract.mem")
		public String member_testSignContract(HttpServletRequest req, Model model) {
			logger.info("▶ /member_testSignContract.mem");
			return "/member/member_testSignContract";
		}
		
		
		
		/* 20.03.03 - 문성혁, 블록체인 적용 결제 테스트 */
		
		
		
	
}
 