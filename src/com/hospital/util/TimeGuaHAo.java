package com.hospital.util;

import java.util.Calendar;
import java.util.Date;
import java.util.Timer;
import java.util.TimerTask;

import com.hospital.admaction.DoCleanGuaHaoTableAction;

public class TimeGuaHAo {
	  public static void timer() {
	    Calendar calendar = Calendar.getInstance();
	    calendar.set(Calendar.HOUR_OF_DAY, 23); // ����ʱ
	    calendar.set(Calendar.MINUTE, 55);    // ���Ʒ�
	    calendar.set(Calendar.SECOND, 55);    // ������
	 
	    Date time = calendar.getTime();     // �ó�ִ�������ʱ��
	 
	    Timer timer = new Timer();
	    timer.scheduleAtFixedRate(new TimerTask() {
	      public void run() {
	    	  DoCleanGuaHaoTableAction guohao = new DoCleanGuaHaoTableAction();
	    	  guohao.cleanGuaHao();
	      }
	    }, time, 1000 * 60 * 60 * 24);// �����趨����ʱÿ��̶�ִ��
	  }
}