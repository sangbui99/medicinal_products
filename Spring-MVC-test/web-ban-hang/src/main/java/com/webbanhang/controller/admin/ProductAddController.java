package com.webbanhang.controller.admin;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.webbanhang.dto.ProductAddDTO;
import com.webbanhang.service.IProductAddService;
import com.webbanhang.service.IProductService;
import com.webbanhang.service.IUserService;
import com.webbanhang.util.MessageUtil;

@Controller(value = "productAddControllerOfAdmin")
public class ProductAddController {

	@Autowired
	private IProductAddService productAddService;

	@Autowired
	private IProductService productService;
	
	@Autowired
	private IUserService userService;
	
	@Autowired
	private MessageUtil messageUtil;
	
	@RequestMapping(value = "/quan-tri/gio-hang/danh-sach", method = RequestMethod.GET)
	public ModelAndView showList(@RequestParam("page") int page, 
								 @RequestParam("limit") int limit, HttpServletRequest request) {
		ProductAddDTO productAddDTO = new ProductAddDTO();
		productAddDTO.setPage(page);
		productAddDTO.setLimit(limit);
		ModelAndView mav = new ModelAndView("admin/productAdd/list");
		Pageable pageable = new PageRequest(page - 1, limit);
		productAddDTO.setListResult(productAddService.findAll(pageable));
		productAddDTO.setTotalItem(productAddService.getTotalItem());
		productAddDTO.setTotalPage((int) Math.ceil((double) productAddDTO.getTotalItem() / productAddDTO.getLimit()));
		if (request.getParameter("message") != null) {
			Map<String, String> message = messageUtil.getMessage(request.getParameter("message"));
			mav.addObject("message", message.get("message"));
			mav.addObject("alert", message.get("alert"));
		}
		mav.addObject("model", productAddDTO);
		return mav;
	}
	
	
	@RequestMapping(value = "/quan-tri/gio-hang/chinh-sua", method = RequestMethod.GET)
	public ModelAndView editNew(@RequestParam(value = "id", required = false) Long id, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("admin/productAdd/edit");
		ProductAddDTO productAddDTO = new ProductAddDTO();
		if (id != null) {
			productAddDTO = productAddService.findById(id);
		}
		if (request.getParameter("message") != null) {
			Map<String, String> message = messageUtil.getMessage(request.getParameter("message"));
			mav.addObject("message", message.get("message"));
			mav.addObject("alert", message.get("alert"));
		}
		mav.addObject("products", productService.findAll());
		mav.addObject("users", userService.findAll());
		mav.addObject("model", productAddDTO);
		return mav;
	}
}
