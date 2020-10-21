package com.bit.dept04.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/download.bit")
public class DownloadContoller extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String fname = req.getParameter("file");
		String org = req.getParameter("org");
		String path = req.getRealPath("up");
		File file = new File(path + "\\" + fname);
		System.out.println(file.exists());
		resp.setContentType("application/octet-stream");
		resp.setHeader("Content-Disposition", "attachment; filename=" + org);
		ServletOutputStream out = resp.getOutputStream();
		if(file.exists()) {
			FileInputStream fis = new FileInputStream(file);
			int cnt = -1;
			while((cnt = fis.read()) != -1) {
				out.write(cnt);
			}
			out.flush();
		}
	}
}
