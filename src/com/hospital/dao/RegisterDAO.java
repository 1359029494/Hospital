package com.hospital.dao;

import java.util.List;

import com.hospital.db.DBManager;
import com.hospital.mapper.IMapper;
import com.hospital.mapper.PatientMapper;
import com.hospital.mapper.RegisterMapper;
import com.hospital.vo.Doctor;
import com.hospital.vo.Patient;
import com.hospital.vo.Register;
//挂号表的DAO
public class RegisterDAO {
	//增加挂号信息
	public int save(Register r) throws Exception{
		String sql = "insert into Register values(regid.nextval,?,?,?,?)";
		Object []params = {
				r.getPatid(),
				r.getRepatage(),
				r.getRedname(),
				r.getRedoc()
		};
		DBManager db = new DBManager();
		int retn = db.executeUpdate(sql, params);
		return retn;
	}
	//删除挂号信息  通过挂号信息的ID
	public int delete(Register r) throws Exception{
		String sql = "delete from Register where regid = ?";
		Object []params={
				r.getRegid()
		};
		DBManager db=new DBManager();
		int retn=db.executeUpdate(sql, params);
		return retn;
	}
	//查询总条数
	public int getTotal() throws Exception{
		String sql=" select count(*) from Register ";
		Object []params=null;
		DBManager db=new DBManager();
		int total=db.executeQueryJvHe(sql, params);
		return total;
	}
	//查询挂号信息表 分页查询 查询出全部信息 
	public List<Register> findByPage(int pagenow, int pagesize) throws Exception{
		int start=(pagenow-1)*pagesize;
		String sql = " select *from (select rownum rn,r.* from Register r) where rn>? and rownum<=? ";
		Object []params = {
			start,
			pagesize
		};
		IMapper mapper = new RegisterMapper();
		DBManager db = new DBManager();
		List<Register> list = db.executeQueryObjectList(sql, params, mapper);
		return list;
	}
	//修改挂号信息信息 通过挂号信息ID,获取订单挂号信息 并修改
	public int merge(Register r) throws Exception{
		String sql=" update Register set patid=?,repatage=?,redname=?,redoc=? where regid=? ";
		Object []params={
			r.getPatid(),
			r.getRepatage(),
			r.getRedname(),
			r.getRedoc(),
			r.getRegid()
		};
		DBManager db=new DBManager();
		int retn=db.executeUpdate(sql, params);
		return retn;
	}
	//通过挂号信息ID 直接查询该挂号信息
	public Register findById(int regid) throws Exception{
		String sql="select *from Register where regid=?";
		Object []params={
				regid
		};
		IMapper mapper=new RegisterMapper();
		DBManager db=new DBManager();
		List<Register> list=db.executeQueryObjectList(sql, params, mapper);
		Register d=list.get(0);
		return d;
	}
	/*
	 *黄成兴-12/15-16:40
	 */
	//查询某个医生要处理的挂号信息总条数 
	public int getTotalByDoc(String redoc) throws Exception{
		String sql=" select count(*) from register where redoc=? ";
		Object []params={
				redoc
		};
		DBManager db=new DBManager();
		int total=db.executeQueryJvHe(sql, params);
		return total;
	}
	/*
	 *黄成兴-12/15-16:42
	 */
	//查询某个医生要处理的挂号信息总条数
	public Register findFirst(String redoc) throws Exception{
		String sql="select * from (select * from register order by regid) where redoc=? and rownum=1";
		Object []params={
				redoc
		};
		IMapper mapper=new RegisterMapper();
		DBManager db=new DBManager();
		List<Register> list=db.executeQueryObjectList(sql, params, mapper);
		Register d=list.get(0);
		return d;
	}
	
	/*
	 *根据医生的姓名，分页查找挂号病人
	 作者：陈雪冰
	 */
	public List<Register> findByPageForDoctor(int pagenow, int pagesize,String docname) throws Exception{
		int start=(pagenow-1)*pagesize;
		String sql = " select *from (select rownum rn,r.* from Register r) where rn>? and rownum<=? and redoc=? order by regid ";
		Object []params = {
			start,
			pagesize,
			docname
		};
		IMapper mapper = new RegisterMapper();
		DBManager db = new DBManager();
		List<Register> list = db.executeQueryObjectList(sql, params, mapper);
		return list;
	}
	/*
	 * 刘铠熔
	 * 2018-12-29
	 * */
	public List<Register> findByForDoctor(String docname) throws Exception{
		String sql = " select *from Register where  redoc=?";
		Object []params = {
			docname
		};
		IMapper mapper = new RegisterMapper();
		DBManager db = new DBManager();
		List<Register> list = db.executeQueryObjectList(sql, params, mapper);
		return list;
	}
	
	
	/*
	 查询指定医生的挂号患者的总人数
	 作者：陈雪冰
	 */
	public int getTotalPatientForDoctor(String redoc) throws Exception{
		String sql="select count(*) from register where redoc=?";
		Object []params= {redoc};
		DBManager db=new DBManager();
		int total=db.executeQueryJvHe(sql, params);
		return total;
	}
	/*
	 * 刘铠熔
	 * 2018/12/29
	 * */

	/*
	 *黄成兴-12/15-16:42
	 */
	//通过患者id查询出 挂号信息 返回值为list集合
	public List<Register> findByIdForGuaHao(int patid) throws Exception{
		String sql="select *from Register where patid=?";
		Object []params={
				patid
		};
		IMapper mapper=new RegisterMapper();
		DBManager db=new DBManager();
		List<Register> list=db.executeQueryObjectList(sql, params, mapper);
		return list;
	}
	//删除挂号表所有的信息
	public int deleteGuaHaoTable() throws Exception{
		String sql="delete from register where 1=1";
		Object []params=null;
		DBManager db=new DBManager();
		int retn=db.executeUpdate(sql, params);
		return retn;
	}
	//删除序列
	public int deleteRegid() throws Exception{
		String sql="drop sequence regid";
		Object []params=null;
		DBManager db=new DBManager();
		int retn=db.executeUpdate(sql, params);
		return retn;
	}
	//新建序列
	public int saveRegid() throws Exception{
		String sql="\r\n" + 
				"create sequence regid\r\n" + 
				"increment by 1\r\n" + 
				"start with 1\r\n" + 
				" nomaxvalue\r\n" + 
				" minvalue 1\r\n" + 
				" nocache\r\n" + 
				"order";
		Object []params=null;
		DBManager db=new DBManager();
		int retn=db.executeUpdate(sql, params);
		return retn;
	}
	//根据患者id删除挂号信息
	public int deleteGuaHao(int patid) throws Exception{
		String sql="delete from register where patid=?";
		Object []params= {
				patid
		};
		DBManager db=new DBManager();
		int retn=db.executeUpdate(sql, params);
		return retn;
	}
	//通过用户ID 直接查询该挂号信息
		public Register findByuserId(int patid) throws Exception{
			String sql="select *from Register where patid=?";
			Object []params={
					patid
			};
			IMapper mapper=new RegisterMapper();
			DBManager db=new DBManager();
			List<Register> list=db.executeQueryObjectList(sql, params, mapper);
			Register d=list.get(0);
			return d;
		}
		
}
