package com.hospital.util;

import java.util.Calendar;
import java.util.Date;
import java.util.Timer;
import java.util.TimerTask;

import com.hospital.admaction.DoCleanGuaHaoTableAction;

public class TimeGuaHAo {
	  public static void timer() {
	    Calendar calendar = Calendar.getInstance();
	    calendar.set(Calendar.HOUR_OF_DAY, 23); // 控制时
	    calendar.set(Calendar.MINUTE, 55);    // 控制分
	    calendar.set(Calendar.SECOND, 55);    // 控制秒
	 
	    Date time = calendar.getTime();     // 得出执行任务的时间
	 
	    Timer timer = new Timer();
	    timer.scheduleAtFixedRate(new TimerTask() {
	      public void run() {
	    	  DoCleanGuaHaoTableAction guohao = new DoCleanGuaHaoTableAction();
	    	  guohao.cleanGuaHao();
	      }
	    }, time, 1000 * 60 * 60 * 24);// 这里设定将延时每天固定执行
	  }
}
