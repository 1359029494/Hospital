package com.hospital.action;

import java.util.ArrayList;
import java.util.List;

import com.hospital.dao.DingDanHelpDAO;
import com.hospital.vo.DingDanHelp;

public class TestDingDan {
	public static void main(String[] args) {
		//²éÑ¯¶©µ¥±àºÅºÍ¶©µ¥½ð¶î
		DingDanHelpDAO dao = new DingDanHelpDAO();
		List<DingDanHelp> list = new ArrayList<>();
		try {
			list=dao.findByPageForUnpay(28, 1, 2);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(list.size());
	}
}
