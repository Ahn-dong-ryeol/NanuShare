package com.nanushare.springproject.controller.announce;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.nanushare.springproject.domain.announce.AnnVO;
import com.nanushare.springproject.domain.announce.Criteria;
import com.nanushare.springproject.domain.announce.PageMaker;
import com.nanushare.springproject.service.announce.AnnounceService;

@Controller
@RequestMapping("/ann")
public class AnnounceController {
	
	private static final Logger logger = LoggerFactory.getLogger(AnnounceController.class);
	
	@Inject
	AnnounceService announceService;
	
	// 등록화면
	@RequestMapping(value="/register", method=RequestMethod.GET)
	public void registerGET(AnnVO annVO, Model model) throws Exception {
			logger.info("register get.......");
	}
	
	@RequestMapping(value="/register", method=RequestMethod.POST)
	public String registerPOST(AnnVO annVO, RedirectAttributes rttr) throws Exception {
		logger.info("register post.........");
		logger.info(annVO.toString());
		
		announceService.regist(annVO);
		
		rttr.addFlashAttribute("msg", "공지글 등록 성공");
		//jsp에 result이름으로 전송, 1회만 전송, 새로고침시 없어짐
		
		return "redirect:/ann/list";
	}
	
	// 목록화면***
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public void listAll(Criteria cri, Model model) throws Exception {
		logger.info(cri.toString());
		
		//현재 페이지 글 리스트
		model.addAttribute("list", announceService.listAll(cri));
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(announceService.listCountCriteria(cri));
		
		//페이징 정보 totalCount(총 게시글 수), startPage(첫 페이지 번호), endPage(끝 페이지 번호), prev(유/무), next(유/무)
		model.addAttribute("pageMaker",pageMaker);
	}
	
	// 상세페이지
	@RequestMapping(value="/read", method=RequestMethod.GET)
	public void read(@RequestParam("annId") int annId, @ModelAttribute("cri") Criteria cri, Model model) throws Exception {
		model.addAttribute(announceService.read(annId));
	}
	
	// 삭제
	@RequestMapping(value="/remove", method=RequestMethod.POST)
	public String remove(@RequestParam("annId") int annId, Criteria cri, RedirectAttributes rttr) throws Exception {
		announceService.remove(annId);
		
		rttr.addAttribute("page", cri.getPage()); // 현재 목록의 페이지 번호
		rttr.addAttribute("perPageNum",cri.getPerPageNum()); // 현재 목록 페이지의 페이지 당 데이터 수
		rttr.addFlashAttribute("msg", "삭제 성공");
		return "redirect:/ann/list";
	}
	
	// 수정
	@RequestMapping(value="/modify", method=RequestMethod.GET)
	public String modifyGET(@RequestParam("annId") int annId, @ModelAttribute("cri") Criteria cri, Model model) throws Exception {
		model.addAttribute(announceService.read(annId));
		return "수정할 페이지";
	}
	
	@RequestMapping(value="/modify", method=RequestMethod.POST)
	public String modifyPOST(AnnVO annVO, Criteria cri, RedirectAttributes rttr) throws Exception {
		logger.info("modify post...........");
		announceService.modify(annVO);
		
		rttr.addAttribute("page",cri.getPage()); // 현재 목록의 페이지 번호
		rttr.addAttribute("perPageNum",cri.getPerPageNum()); // 현재 목록 페이지의 페이지 당 데이터 수
		rttr.addFlashAttribute("msg", "수정 성공");
		
		return "redirect:/ann/list";
	}
	

}
