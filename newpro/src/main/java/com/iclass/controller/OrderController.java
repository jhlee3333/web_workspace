package com.iclass.controller;

import com.iclass.dto.OrderDto;
import lombok.RequiredArgsConstructor;
import lombok.ToString;
import lombok.extern.log4j.Log4j2;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller     //동기식 통신 상태이므로 Controller
@RequestMapping("/order")
@Log4j2
@SpringBootApplication
@RequiredArgsConstructor        //의존성을 주입하기 위해 생성자 형성
@ToString
public class OrderController {

    @GetMapping("/new")     //화면(new.html)을 요청하는 /order/new GetMapping 처리
    public void newform(){

    }

    @GetMapping("/confirm")     //confirm.html 요청하는 /order/confirm GetMapping 처리
    public void confirm(){

    }

    @GetMapping("/test")        //test.html 요청하는 /order/test GetMapping 처리
    public void test1(String email, String pcode, int count
                    , Model model){     //Model 객체는 데이터를 view로 전달
        log.info(">>>>> get test mapping");
        log.info("email : {}", email);
        log.info("pcode : {}", pcode);
        log.info("count : {}", count);
        model.addAttribute("email", email);
        model.addAttribute("pcode", pcode);
        model.addAttribute("count", count);
    }

    @PostMapping("/test")       //test.html 요청에 응답하여 /order/test PostMapping 처리
    public String test2(String email, String pcode, int count){
        log.info(">>>>> post test mapping");
        log.info("email : {}", email);
        log.info("pcode : {}", pcode);
        log.info("count : {}", count);
        return "redirect:/order/new";
    }

    @PostMapping("/OrderDto")   //order, confirm 연결 위해 OrderDto를 연결하여 접속
    public String test3(OrderDto dto){
        log.info(">>>>> post dto mapping");
        log.info("email : {}", dto.getEmail());
        log.info("pcode : {}", dto.getPcode());
        log.info("count : {}", dto.getCount());
        return "redirect:/order/new";
    }
}