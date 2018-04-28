package com.liumapp.docker.bus.hello.controller;

import com.liumapp.docker.bus.hello.producer.Sender;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author liumapp
 * @file IndexController.java
 * @email liumapp.com@gmail.com
 * @homepage http://www.liumapp.com
 * @date 4/28/18
 */
@RestController
@RequestMapping("/")
public class IndexController {

    @Autowired
    private Sender sender;

    @RequestMapping("send")
    public String sendOrder () {
        sender.send();
        return "a info had been send into queue , which is named hello ";
    }

}
