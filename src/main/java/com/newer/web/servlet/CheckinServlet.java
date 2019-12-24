package com.newer.web.servlet;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.newer.domain.CheckIn;
import com.newer.service.CheckinService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

/**
 * @author worldmin
 */
@WebServlet("/checkin")
public class CheckinServlet extends HttpServlet{

    private CheckinService checkinService=new CheckinService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        String action=req.getParameter("action");
        PrintWriter out=resp.getWriter();

        if("show".equals(action)){
            List<CheckIn> list=checkinService.findAll();
            Gson gson=new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm:ss").create();
            out.print(gson.toJson(list));
        }else if("update".equals(action)){
            int cid=Integer.parseInt(req.getParameter("cid"));
            int totalprice=Integer.parseInt(req.getParameter("totalprice"));
            int roomid=Integer.parseInt(req.getParameter("roomid"));
            checkinService.update(cid,totalprice,roomid);
            out.print("1");
        }
        out.close();
    }
}
