
package com.gome.trend.modules.api.util;

import java.util.Date;
import java.util.Locale;

import org.springframework.util.ResourceUtils;

public class DateUtils{
	
	/**
	 * 以友好的方式显示时间
	 * @param req
	 * @param time
	 * @return
	 */
	public static String friendly_time(Date time) {
	    Locale loc = Locale.getDefault();
	    if(time == null) return "刚刚";
	    int ct = (int)((System.currentTimeMillis() - time.getTime())/1000);
	    if(ct < 60)
	        return "刚刚";
	    if(ct < 3600)
	        return  Math.max(ct / 60,1)+"分钟";
	    if(ct >= 3600 && ct < 86400)
	        return (ct / 3600)+"小时前";
	    if(ct >= 86400 && ct < 2592000){ //86400 * 30
	        int day = ct / 86400 ;          
	        return (day>1)?day+"天前":"昨天";
	    }
	    if(ct >= 2592000 && ct < 31104000) //86400 * 30
	        return (ct / 2592000)+"个月前";
	    return (ct / 31104000)+"年前";      
	}

}
