package com.controller;

import com.Service.TeacherService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/teacherInfo")
public class TeacherController extends HttpServlet {
    private TeacherService teacherService = new TeacherService();
    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        get the id and try to select it
        req.setAttribute("list",teacherService.findByLevel(Integer.parseInt(req.getParameter("level"))));
        System.out.println(teacherService.findByLevel(Integer.parseInt(req.getParameter("level"))).toString());
        req.getRequestDispatcher("/WEB-INF/teacher-info.jsp")
                .forward(req, resp);
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        add an record to mysql can only by admin
    }
}
