insert  into `tb_permission`
(`id`,`create_time`,`description`,`icon`,`is_hide`,`level`,`name`,`sort`,`source_key`,`source_url`,`type`,`update_time`,`parent_id`)
 values
 (0,'2018-01-10 13:56:51','系统管理',NULL,0,1,'系统管理',1,'system','javascript:void(0);',1,'2018-01-10 13:59:01',NULL),
 (1,'2018-01-10 13:56:51','用户管理',NULL,0,2,'用户管理',1,'system:user:index','/admin/user/index',1,'2018-01-10 13:59:01',0),
 (2,'2018-01-10 13:56:51','用户编辑',NULL,0,3,'用户编辑',1,'system:user:edit','/admin/user/edit*',2,'2018-01-10 16:26:42',1),
 (3,'2018-01-11 16:48:48','用户添加',NULL,0,3,'用户添加',2,'system:user:add','/admin/user/add',2,'2018-01-11 16:49:26',1),
 (4,'2018-01-11 16:48:48','用户删除',NULL,0,3,'用户删除',3,'system:user:deleteBatch','/admin/user/deleteBatch',2,'2018-01-18 14:11:41',1),
 (5,'2018-01-11 16:48:48','角色分配',NULL,0,3,'角色分配',4,'system:user:grant','/admin/user/grant/**',2,'2018-01-18 14:11:51',1),
 (6,'2018-01-12 16:45:10','角色管理',NULL,0,2,'角色管理',2,'system:role:index','/admin/role/index',1,'2018-01-12 16:46:52',0),
 (7,'2018-01-12 16:47:02','角色编辑',NULL,0,3,'角色编辑',1,'system:role:edit','/admin/role/edit*',2,'2018-01-18 10:24:06',1),
 (8,'2018-01-12 16:47:23','角色添加',NULL,0,3,'角色添加',2,'system:role:add','/admin/role/add',2,'2018-01-12 16:49:16',6),
 (9,'2018-01-12 16:47:23','角色删除',NULL,0,3,'角色删除',3,'system:role:deleteBatch','/admin/role/deleteBatch',2,'2018-01-18 14:12:03',6),
 (10,'2018-01-12 16:47:23','资源分配',NULL,0,3,'资源分配',4,'system:role:grant','/admin/role/grant/**',2,'2018-01-18 14:12:11',6),
 (11,'2018-01-17 11:21:12','资源管理',NULL,0,2,'资源管理',3,'system:resource:index','/admin/resource/index',1,'2018-01-17 11:21:42',0),
 (12,'2018-01-17 11:21:52','资源编辑',NULL,0,3,'资源编辑',1,'system:resource:edit','/admin/resource/edit*',2,'2018-01-17 11:22:36',11),
 (13,'2018-01-17 11:21:54','资源添加',NULL,0,3,'资源添加',2,'system:resource:add','/admin/resource/add',2,'2018-01-17 11:22:39',11),
 (14,'2018-01-17 11:21:54','资源删除',NULL,0,3,'资源删除',3,'system:resource:deleteBatch','/admin/resource/deleteBatch',2,'2018-01-18 14:12:31',11);
insert  into `tb_role`(`id`,`create_time`,`description`,`name`,`role_key`,`status`,`update_time`)
values (1,'2018-01-09 17:25:30','超级管理员','administrator','administrator',0,'2018-01-09 17:26:25');
insert  into `tb_role_permission`(`role_id`,`resource_id`)
 values (1,0),(1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14);
insert  into `tb_user`(`id`,`address`,`avatar`,`birthday`,`create_time`,`delete_status`,`description`,`email`,`locked`,`nick_name`,`password`,`sex`,`telephone`,`update_time`,`user_name`)
values (1,'广州','','2018-01-09 17:26:39','2018-01-09 17:26:41',0,'超级管理员','lyh0622@126.com',0,'admin','3931MUEQD1939MQMLM4AISPVNE',1,'13112256276','2018-01-09 17:27:11','admin');
insert  into `tb_user_role`(`user_id`,`role_id`) values (1,1);
