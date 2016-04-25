/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nbr.nfo.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.nbr.nfo.db.model.entity.User;
import com.nbr.nfo.db.model.repo.UserRepository;

import javax.servlet.http.HttpSession;


@Controller
@RequestMapping(value = "/signup")
public class SignUpController {

    @Autowired
    private UserRepository userRepository;

    @RequestMapping(method = RequestMethod.POST)
    public String postSignup(HttpSession session) {
        User user = new User();
        user.setName("123456");
        userRepository.addUser(user);

        session.setAttribute("isAuth", true);
        //session.setAttribute("userName",true);

        return "redirect:/index";
    }


    @RequestMapping(method = RequestMethod.GET)
    public String getSignup(Model model, HttpSession session) {
        return "signup";
    }
}



