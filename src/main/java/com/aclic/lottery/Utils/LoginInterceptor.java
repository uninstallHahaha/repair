package com.aclic.lottery.Utils;

import com.aclic.lottery.Models.User;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request,
                             HttpServletResponse response,
                             Object handler) throws Exception {
        //static
        if(request.getRequestURI().contains(".") && !request.getRequestURI().endsWith("html")){
            return true;
        }
        //login
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("USER");
        if(null == user){
            response.sendRedirect("/page-login.html");
            return false;
        }
        return true;
    }
}
