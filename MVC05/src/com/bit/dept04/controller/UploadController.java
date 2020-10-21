package com.bit.dept04.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.oreilly.servlet.multipart.FileRenamePolicy;

@WebServlet("/upload.bit")
public class UploadController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.getRequestDispatcher("upload.jsp").forward(req, resp);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int fsize = 1 * 1024 * 1024;
		String path = request.getRealPath("./up"); // tmp0/wtpwebapps/mvc05/./up
		FileRenamePolicy frp = null;
		frp = new DefaultFileRenamePolicy();
		MultipartRequest mpReq = new MultipartRequest(request, path, fsize, frp);
		System.out.println(mpReq.getParameter("num"));
		System.out.println(mpReq.getFilesystemName("file1"));
		System.out.println(mpReq.getOriginalFileName("file1"));
		
		request.setAttribute("rename", mpReq.getFilesystemName("file1"));
		request.setAttribute("original", mpReq.getOriginalFileName("file1"));
		
		request.getRequestDispatcher("download.jsp").forward(request, response);
	}

}
