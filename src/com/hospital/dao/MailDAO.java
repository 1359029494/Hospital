package com.hospital.dao;

import java.util.List;

import com.hospital.db.DBManager;
import com.hospital.mapper.IMapper;
import com.hospital.mapper.MailMapper;
import com.hospital.vo.Admins;
import com.hospital.vo.Doctor;
import com.hospital.vo.Mail;

public class MailDAO {
	//分页查询之前 需要知道总条数
		public int getTotal() throws Exception{
			String sql=" select count(*) from Mail ";
			Object []params=null;
			DBManager db=new DBManager();
			int total=db.executeQueryJvHe(sql, params);
			return total;
		}
		//查询信息表 分页查询 查询出全部信息 
		public List<Mail> findByPage(int pagenow, int pagesize) throws Exception{
			int start=(pagenow-1)*pagesize;
			String sql = " select *from (select rownum rn,a.* from mail a) where rn>? and rownum<=? ";
			Object []params = {
				start,
				pagesize
			};
			IMapper mapper = new MailMapper();
			DBManager db = new DBManager();
			List<Mail> list = db.executeQueryObjectList(sql, params, mapper);
			return list;
		}
		//新增信息 
		public int save(Mail m) throws Exception{
			String sql = "insert into mail values(mesid.nextval,?,?,?,?,?,?)";
			Object []params = {
					m.getAuthor(),
					m.getAuthorid(),
					m.getTitle(),
					m.getMessage(),
					m.getMesdate(),
					m.getMesstade()
			};
			DBManager db = new DBManager();
			int retn = db.executeUpdate(sql, params);
			return retn;
		}
		
		//修改信息状态
		public int merge(int messtate,int mesid) throws Exception{
			String sql=" update mail set messtate=? where mesid=? ";
			Object []params={
					messtate,
					mesid
			};
			DBManager db=new DBManager();
			int retn=db.executeUpdate(sql, params);
			return retn;
		}
		/**
		 * 黄成兴
		 * 18-12-26
		 * 查找医生发的消息
		 * */
		//查询信息表 分页查询 查询出医生发的全部信息 
				public List<Mail> DocfindByPage(int authorid,int pagenow, int pagesize) throws Exception{
					int start=(pagenow-1)*pagesize;
					String sql = " select *from (select rownum rn,a.* from mail a where author=1 and authorid=?) where rn>? and rownum<=? ";
					Object []params = {
						authorid,
						start,
						pagesize
					};
					IMapper mapper = new MailMapper();
					DBManager db = new DBManager();
					List<Mail> list = db.executeQueryObjectList(sql, params, mapper);
					return list;
				}
		//分页查询医生之前 需要知道总条数
			public int getDocTotal(int authorid) throws Exception{
				String sql=" select count(*) from Mail where author=1 and authorid=?";
				Object []params={
						authorid
				};
				IMapper mapper = new MailMapper();
				DBManager db=new DBManager();
				int total=db.executeQueryJvHe(sql, params);
				return total;
			}
			//查询出所有管理员发的全部信息 
			public List<Mail> admfindByPage(int pagenow, int pagesize) throws Exception{
				int start=(pagenow-1)*pagesize;
				String sql = " select *from (select rownum rn,a.* from mail a where author=0) where rn>? and rownum<=? ";
				Object []params = {
					start,
					pagesize
				};
				IMapper mapper = new MailMapper();
				DBManager db = new DBManager();
				List<Mail> list = db.executeQueryObjectList(sql, params, mapper);
				return list;
			}
		//查询出所有管理员发的全部信息的总条数
			public int getAdmTotal() throws Exception{
				String sql=" select count(*) from Mail where author=0";
				Object []params={
				};
				IMapper mapper = new MailMapper();
				DBManager db=new DBManager();
				int total=db.executeQueryJvHe(sql, params);
				return total;
			}
			//根据mesid查询某条信息 
			public List<Mail> findById(int mesid) throws Exception{
				String sql = " select *from mail a where mesid=?";
				Object []params = {
					mesid
				};
				IMapper mapper = new MailMapper();
				DBManager db = new DBManager();
				List<Mail> list = db.executeQueryObjectList(sql, params, mapper);
				return list;
			}
			
			//删除关于医生的消息  通过医生的ID,删除医生相关消息
			public int delete(int docid) throws Exception{
				String sql = "delete from mail where author = ? and authorid = ?";
				Object []params={
						1,docid
				};
				DBManager db=new DBManager();
				int retn=db.executeUpdate(sql, params);
				return retn;
			}
}
