package com.controller;

import com.Service.TeacherService;
import com.entity.Teacher;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet("/info")
public class InfoController extends HttpServlet {
    private TeacherService teacherService = new TeacherService();
    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Teacher teacher = teacherService.findById(Integer.parseInt(req.getParameter("id")));
        req.setAttribute("teacher",teacher);
        req.getRequestDispatcher("/WEB-INF/info.jsp")
                .forward(req,resp);
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
