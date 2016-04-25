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
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import ua.nbr.imb.db.model.repo.UserRepository;

import javax.servlet.http.HttpSession;
import javax.ws.rs.Path;


@Controller
@RequestMapping(value = "/")
public class MainController {

    @Autowired
    private UserRepository userRepository;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String getRoot(HttpSession session) {
        return "redirect:/signup";
        //return "redirect:/auth";
    }


//    @RequestMapping(value = "/auth", method = RequestMethod.GET)
//    public ModelAndView getAuth(HttpSession session) {
//        Boolean isAuth = false;
//        //Boolean isAuth = (Boolean) session.getAttribute("isAuth");
//        if (!isAuth) {
//            ModelAndView mav = new ModelAndView("auth");
//            mav.addObject("userList", userRepository.findAll());
//            return mav;
//        } else {
//            ModelAndView mav = new ModelAndView("index");
//            return mav;
//        }
//    }


    @RequestMapping(value = "/index", method = {RequestMethod.GET})
    public String getIndex(Model model) {
        model.addAttribute("userList",userRepository.findAll());
        return "index";
    }

    @RequestMapping(value = "/index", method = {RequestMethod.POST})
    public String postIndex(@RequestParam String username) {
        System.out.println(username);
        return "redirect:/index";
    }

    //@Secured("[USER_ROLE]")
    @ResponseBody
    @RequestMapping(value = "/map/set/{lat}/{lng}", method = {RequestMethod.POST, RequestMethod.GET})
    public String postMap(@PathVariable Double lat, @PathVariable Double lng) {
        System.out.print(lat + ":" + lng);
        // ModelAndView mav = new ModelAndView("index");
        // mav.addObject("userList", userRepository.findAll());

        return "OK";
    }
}
