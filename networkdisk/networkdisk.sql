
			�ļ��У�categorie�����ݱ�
                          
�ֶ�		����			Null		Ĭ��		ע��
cat_id 		varchar(50)		��				����id
cat_name 	varchar(255)		��				��������
cat_reid 	varchar(255)		��				�ϼ�����id


			���ѣ�friend�����ݱ�
                         
�ֶ�		����			Null	Ĭ��	ע��
fri_id 		int(15)			��		������������
fri_uid 	varchar(50)		��		�û�id�������
fri_fid 	varchar(50)		��		����id�������
addtime 	timestamp 		��		���ʱ��
	


			��Ϣ���棨notice��
                        
�ֶ�			����			Null		Ĭ��		ע��
not_id 			int(10)			��				����id
not_title 		varchar(255)		��				���Ź�������
not_content 		text			��				���Ź�������
not_time 		timestamp		��				����ʱ��
   

			����share�����ݱ�
                        
�ֶ�			����				Null		Ĭ��		ע��
sh_id 		varchar(50)		��				����
sh_uid		varchar(50)		��				������id(���)
sh_url 		varchar(255)		��				�������ӵ�ַ
sh_pwd		varchar(255)		��				��������
sh_startTime	timestamp 		��				����ʱ��
sh_retain	int(2)			��		-1���������ã�  ����ʱ��	



			�ļ��б�file�����ݱ�
                            
�ֶ�			����			Null	Ĭ��	ע��
list_id 		int(11)			��		������������
list_name 		varchar(255)		��		�ļ�����
list_uid 		varchar(50)		��		�ϴ��û�id�������
list_catid		varchar(50)		��		�����ļ���id(���)
list_path		varchar(255)		��		�ļ�·��
list_addtime 		timestamp 		��		�ϴ�ʱ��
list_type		varchar(20)		��		�ļ�����
list_downum		int(11)			��	0	���ش���
list_deletesign		int(1)			��		�ļ�ɾ����־



			�û���user�����ݱ�
                
�ֶ�				����			Null		Ĭ��		ע��
user_id 			varchar(50)		��				����
user_name 			varchar(255)		��				�û���
user_password			varchar(255)		��				��¼����
user_truename			varchar(255)		��				��ʵ����
user_email 			varchar(255)		��				email
user_phone			varchar(20)		��				ע���ֻ���
user_isadmin 			int(1)			��		0		�Ƿ����Ա
user_sex			int(1)			��		0		�Ա�
user_about 			varchar(255)		��				���˽���
user_cTime 			timestamp 		��				ע��ʱ��
user_photo			varchar(255)            ��                              ����ͷ��

---------------------------------------------------------------------------------------------------------------------------

#sql������:

create database networkdisk charset utf8;
use networkdisk;

#�����û���
create table user(
			user_id        varchar(50) PRIMARY KEY,
			user_name      varchar(255) NOT NULL UNIQUE,
			user_password  varchar(255) NOT NULL,
			user_truename  varchar(255) NOT NULL,	
			user_email		 varchar(255) NOT NULL UNIQUE,
			user_phone     varchar(20)	NOT NULL UNIQUE,
			user_isadmin	 int(1)       NOT NULL DEFAULT 1,
			user_sex       int(1)       NOT NULL DEFAULT 1,
			user_about     varchar(255) ,
			user_cTime	timestamp 	DEFAULT CURRENT_TIMESTAMP,
			user_photo     varchar(255) NOT NULL
);
#�ļ��б�
create table categorie
(
			cat_id varchar(50) not null,
			cat_name varchar(255) not null unique,
			cat_reid varchar(50),
			primary key(cat_id),
			foreign key(cat_reid) references categories(cat_id)
);

#�����ļ���
create table file(
			list_id		int(11) PRIMARY KEY auto_increment,
			list_name	varchar(255) not null,
			list_uid	varchar(50) not null,
			list_catid	varchar(50) ,
			list_path	varchar(255) not null,
			list_addtime	timestamp not null DEFAULT CURRENT_TIMESTAMP,
			list_type	varchar(20) not null,
			list_downum	int(11)  not null DEFAULT 0,
			list_deletesign	int(1) not null,
			FOREIGN key (list_uid) REFERENCES users(user_id),
			FOREIGN key (list_catid) REFERENCES categories(cat_id)
	
);



#���ѱ�
create table friend
(
	fri_id int(15) not null,
	fri_uid varchar(50) not null,
	fri_fid varchar(50) not null,
	fri_addtime timestamp not null default current_timestamp,
	primary key(fri_id),
	foreign key(fri_uid) references users(user_id),
	foreign key(fri_fid) references users(user_id)
);

#��Ϣ����
create table notice
(
	not_id int(10) not null auto_increment,
	not_title varchar(255) not null,
	not_content text not null,
	not_time timestamp not null default current_timestamp,
	primary key(not_id)
);

#�����
create table share
(
	sh_id varchar(50) not null,
	sh_uid varchar(50) not null,
	sh_url varchar(255) not null,
	sh_pwd varchar(255) not null,
	sh_starttime timestamp not null default current_timestamp,
	sh_retaintime int(2) not null default -1,
	primary key(sh_id),
	foreign key(sh_uid) references users(user_id)
);
