package com.heima.test.utils;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

public class CommonUtils {
	static Map<String,String> primaryAnswerMap = new HashMap<>();
	static Map<String,String> seniorAnswerMap = new HashMap<>();
	static{

        InputStream in1 = CommonUtils.class.getClassLoader().getResourceAsStream("answer/primary-answer.properties");
        Properties pro1 = new Properties();
		InputStream in2 = CommonUtils.class.getClassLoader().getResourceAsStream("answer/senior-answer.properties");
		Properties pro2 = new Properties();
		try {
			pro1.load(in1);
			pro2.load(in2);
		} catch (IOException e) {
			e.printStackTrace();
		}
		for(int i = 1;i<=40;i++){
			String ans = (String) pro1.get("q"+i);
            primaryAnswerMap.put("q"+i, ans);
		}

        for(int i = 1;i<=24;i++){
            String ans = (String) pro2.get("q"+i);
            seniorAnswerMap.put("q"+i, ans);
        }


	}
	
	
	
	public static Map<String,String> getSeniorAnswerMap(){
		return seniorAnswerMap;
	}

    public static Map<String,String> getPrimaryAnswerMap(){
        return primaryAnswerMap;
    }


	public static String getIpAddress(HttpServletRequest request) {
		String ip = request.getHeader("x-forwarded-for");
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("Proxy-Client-IP");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("WL-Proxy-Client-IP");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("HTTP_CLIENT_IP");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("HTTP_X_FORWARDED_FOR");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getRemoteAddr();
		}
		return ip+":"+request.getServerPort();
	}





	public static void main(String[] args) {
		Map<String, String> seniorAnswerMap = getSeniorAnswerMap();
		Map<String, String> answerMap = getPrimaryAnswerMap();
		System.out.println(answerMap);
		System.out.println(seniorAnswerMap);


	}
	
	
}
