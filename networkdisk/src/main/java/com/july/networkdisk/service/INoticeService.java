package com.july.networkdisk.service;

import com.july.networkdisk.vo.Notice;

public interface INoticeService extends IBaseService<Notice>{
	/*插入消息公告*/
	void save(Notice notice);
	/*删除消息公告*/
	void delete(int id);

}
