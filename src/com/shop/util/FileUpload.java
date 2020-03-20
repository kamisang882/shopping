package com.shop.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.springframework.web.multipart.MultipartFile;

public class FileUpload {

	public static String upload(MultipartFile photo) throws IllegalStateException, IOException {
		String filePath = "";
		String originaFilename = "";
		String uuid = "";
		if(!photo.isEmpty()) {
			//服务器上传真实路径
			//String realPath = session.getServletContext().getRealPath("upload/")
			String realPath = "F:\\images\\";
			//文件的原始名称
			originaFilename = photo.getOriginalFilename();
			//为了保证文件名称的唯一
			uuid = UUID.randomUUID().toString().replace("-", "");
			if(originaFilename.endsWith("png")||originaFilename.endsWith("jpg")||originaFilename.endsWith("jpeg")) {
				File file = new File(realPath+"/"+uuid+originaFilename);
				photo.transferTo(file);
			}
		}
		filePath = "F:*images*"+uuid+originaFilename;
		return filePath;
	}
	
	public static void lookImg(String path,HttpServletRequest request,HttpServletResponse response) {
		FileInputStream fis = null;
		OutputStream os = null;
		path = path.replace("*", "\\");
		try {
			fis = new FileInputStream(path);
			os = response.getOutputStream();
			int count = 0;
			byte[] buffer = new byte[1024*8];
			while((count = fis.read(buffer))!=-1) {
				os.write(buffer, 0, count);
				os.flush();
			}
		}catch(Exception e) {
			e.printStackTrace();
		}try {
			fis.close();
			os.close();
		}catch(IOException e) {
			e.printStackTrace();
		}
	}
	
}
