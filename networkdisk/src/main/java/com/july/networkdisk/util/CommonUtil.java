package com.july.networkdisk.util;

import java.util.UUID;

public class CommonUtil {
	public static String createUUID(){
		String strID=UUID.randomUUID().toString();
		return strID;
	}
	
}
