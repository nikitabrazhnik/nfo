/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nbr.nfo.web;

import com.sun.org.apache.xpath.internal.operations.Bool;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import ua.nbr.imb.db.model.repo.UserRepository;

import javax.servlet.http.HttpSession;
import java.util.Objects;


@Controller
@RequestMapping(value = "/auth")
public class AuthController {

    @Autowired
    private UserRepository userRepository;

    @RequestMapping(method = RequestMethod.POST)
    public String postAuth(HttpSession session) {

        session.setAttribute("isAuth",true);
        //session.setAttribute("userName",true);

        return "redirect:/index";
    }


    @RequestMapping(method = RequestMethod.GET)
    public String getAuth(Model model, HttpSession session) {
        Boolean isAuth = (Boolean) session.getAttribute("isAuth");
        isAuth = false;
        if (!Objects.isNull(isAuth) && isAuth) {
            return "redirect:/index";
        } else {
            model.addAttribute("userList", userRepository.findAll());
            System.out.println(userRepository.findAll());
            return "auth";
        }
    }


}
