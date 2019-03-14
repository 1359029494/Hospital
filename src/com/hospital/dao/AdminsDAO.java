package com.hospital.dao;

import java.util.List;

import com.hospital.db.DBManager;
import com.hospital.mapper.AdminsMapper;
import com.hospital.mapper.IMapper;
import com.hospital.vo.Admins;



public class AdminsDAO {
	//新增管理员 其中注册时间应为注册时的系统时间
	public int save(Admins a) throws Exception{
		String sql = "insert into admins values(admid.nextval,?,?,?,?,?,?,?,?)";
		Object []params = {
				a.getAdmname(),
				a.getAdmdate(),
				a.getAdmidcard(),
				a.getAdmphonenumber(),
				a.getAdmaddress(),
				a.getSuperadmin(),
				a.getAdmphoto(),
				a.getAdmpass()
		};
		DBManager db = new DBManager();
		int retn = db.executeUpdate(sql, params);
		return retn;
	}
	//删除管理员 通过管理员的ID,删除管理员
	public int delete(Admins a) throws Exception{
		String sql = "delete from admins where admid = ?";
		Object []params={
				a.getAdmid()
		};
		DBManager db=new DBManager();
		int retn=db.executeUpdate(sql, params);
		return retn;
	}
	//分页查询之前 需要知道总条数
	public int getTotal() throws Exception{
		String sql=" select count(*) from Admins ";
		Object []params=null;
		DBManager db=new DBManager();
		int total=db.executeQueryJvHe(sql, params);
		return total;
	}
	//查询管理员表 分页查询 查询出全部信息 
	public List<Admins> findByPage(int pagenow, int pagesize) throws Exception{
		int start=(pagenow-1)*pagesize;
		String sql = " select *from (select rownum rn,a.* from admins a) where rn>? and rownum<=? ";
		Object []params = {
			start,
			pagesize
		};
		IMapper mapper = new AdminsMapper();
		DBManager db = new DBManager();
		List<Admins> list = db.executeQueryObjectList(sql, params, mapper);
		return list;
	}
	//修改管理员信息 通过管理员 ,获取管理员信息 并修改 注册时间不可更改
	public int merge(Admins a) throws Exception{
		String sql=" update admins set admname=?,admdate=?,admpass=?,admphoto=?,admidcard=?,admphonenumber=?,admaddress=?,superadmin=? where admid=? ";
		Object []params={
				a.getAdmname(),
				a.getAdmdate(),
				a.getAdmpass(),
				a.getAdmphoto(),
				a.getAdmidcard(),
				a.getAdmphonenumber(),
				a.getAdmaddress(),
				a.getSuperadmin(),
				a.getAdmid()
		};
		DBManager db=new DBManager();
		int retn=db.executeUpdate(sql, params);
		return retn;
	}
	//通过管理员手机号 直接查询该管理员的所有信息
	public Admins findByphone(String admphonenumber) throws Exception{
		String sql="select *from admins where admphonenumber=?";
		Object []params={
				admphonenumber
		};
		IMapper mapper=new AdminsMapper();
		DBManager db=new DBManager();
		List<Admins> list=db.executeQueryObjectList(sql, params, mapper);
		Admins d=list.get(0);
		return d;
	}
	
	//通过管理员ID 直接查询该管理员的所有信息
		public Admins findById(int admid) throws Exception{
			String sql="select *from admins where admid=?";
			Object []params={
					admid
			};
			IMapper mapper=new AdminsMapper();
			DBManager db=new DBManager();
			List<Admins> list=db.executeQueryObjectList(sql, params, mapper);
			Admins d=list.get(0);
			return d;
		}
	
	//管理员表的DAO
	/**
	 * @author 岳晨
	 * @功能 验证账号密码
	 *@date 12.8
	 */
	public boolean finduser(String username, String userpass) throws Exception{
		boolean flag = false;
		String sql="select *from admins where admphonenumber=? and admpass=?";
		Object []params={
				username,
				userpass
		};
		IMapper mapper=new AdminsMapper();
		DBManager db=new DBManager();
		List<Admins> list=db.executeQueryObjectList(sql, params, mapper);
		if(!list.isEmpty()) {
			flag = true;
		}
		return flag;
	}
	
	
	
}
