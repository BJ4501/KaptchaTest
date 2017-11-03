package com.bj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Neko on 2017/11/3.
 */
@Controller
@RequestMapping("/home")
public class TestController {

    @RequestMapping("/index")
    public String index(){
        System.out.println("INDEXXXXXXXXXXXXXXXx");
        return "index";
    }

}
