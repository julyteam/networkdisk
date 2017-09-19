package com.july.networkdisk.web;

import com.july.networkdisk.service.*;
import com.july.networkdisk.vo.Notice;
import com.opensymphony.xwork2.ActionSupport;

public class NoticeAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	private Notice notice;
	private INoticeService iNoticeService;
	
	
	public Notice getNotice() {
		return notice;
	}
	public void setNotice(Notice notice) {
		this.notice = notice;
	}
	/*插入消息公告*/
	public String save(){
		iNoticeService.save(notice);
		return "success";
	}
	/*删除消息公告*/
	public String delete(){
		iNoticeService.delete(notice.getId());
		return "success";
		
	}

}
