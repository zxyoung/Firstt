package com.zhang.demo.MD5;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class MD5Utils {

	public static String getMD5password(String password) throws NoSuchAlgorithmException {
		// 生成实现指定摘要算法的 MessageDigest 对象。
		MessageDigest md = MessageDigest.getInstance("MD5");

		// 使用指定的字节数组更新摘要。
		md.update(password.getBytes());

		// 通过执行诸如填充之类的最终操作完成哈希计算。
		byte b[] = md.digest();

		// 生成具体的md5密码到buf数组
		int i;
		StringBuffer buf = new StringBuffer("");
		for (int offset = 0; offset < b.length; offset++) {
			i = b[offset];
			if (i < 0)
				i += 256;
			if (i < 16)
				buf.append("0");
			buf.append(Integer.toHexString(i));
		}
		// System.out.println("32位: " + buf.toString());// 32位的加密
		return buf.toString();
	}
	
	public static void main(String[] args) throws NoSuchAlgorithmException {
		String tmp = getMD5password("123456");
		if(tmp.equals(getMD5password("123456"))){
			System.out.println("YES");
		}
		System.out.println(tmp);
	}
}
