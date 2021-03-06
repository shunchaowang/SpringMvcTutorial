package edu.osumc.bmi.ird.spring.tutorial.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by swang on 3/11/2015.
 */
@Controller
public class MainController {

    @RequestMapping("/")
    public ModelAndView home() {
        ModelAndView mv = new ModelAndView("welcome");
        return mv;
    }

    // for 403 access denied page
    @RequestMapping(value = "/403", method = RequestMethod.GET)
    public ModelAndView accessDenied() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("403");
        return mv;
    }
}
