package kr.co.goodee39.order.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/order")
public class orderController {
	
	//정민
	//get으로 되어 있는데 form으로 post 바꿔야함
	//주문 결제 정보 입력
	@GetMapping("/goodsCheckout")
	public String getGoodsCheckout() {
		return "order/goodsCheckout";
	}
	
	//주문 완료 페이지
	@GetMapping("/orderFinish")
	public String getOrderFinish() {
		return "order/orderFinish";
	}
	

}
