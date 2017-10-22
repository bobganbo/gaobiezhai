DROP TABLE IF EXISTS appcms_admin_list;
CREATE TABLE `appcms_admin_list` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uname` varchar(100) NOT NULL DEFAULT '' COMMENT '账号',
  `upass` varchar(100) NOT NULL DEFAULT '' COMMENT '密码',
  `ustate` int(2) NOT NULL DEFAULT '0' COMMENT '用户状态（正常=0，停用=1）',
  `reg_date` int(11) NOT NULL DEFAULT '0' COMMENT '开通时间',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='后台管理表';


DROP TABLE IF EXISTS appcms_app_history;
CREATE TABLE `appcms_app_history` (
  `history_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'app下载id',
  `app_id` int(11) NOT NULL DEFAULT '0' COMMENT '应用ID',
  `app_version` varchar(500) NOT NULL DEFAULT '' COMMENT '版本号',
  `app_update_time` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `app_size` varchar(500) NOT NULL DEFAULT '' COMMENT '程序大小',
  `app_system` varchar(500) NOT NULL DEFAULT '' COMMENT '系统要求',
  `appcms_history_id` int(11) NOT NULL DEFAULT '0' COMMENT 'APPCMS数据中心下载ID',
  `down_url` varchar(500) NOT NULL DEFAULT '' COMMENT '下载地址',
  PRIMARY KEY (`history_id`),
  KEY `app_id` (`app_id`),
  KEY `appcms_history_id` (`appcms_history_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='应用历史版本表';


DROP TABLE IF EXISTS appcms_app_list;
CREATE TABLE `appcms_app_list` (
  `app_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '应用id',
  `last_cate_id` int(11) NOT NULL DEFAULT '0' COMMENT '终极分类ID',
  `app_title` varchar(500) NOT NULL DEFAULT '' COMMENT '应用名称',
  `app_stitle` varchar(500) NOT NULL DEFAULT '' COMMENT 'SEO标题',
  `app_version` varchar(500) NOT NULL DEFAULT '' COMMENT '版本号（最新）',
  `app_update_time` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间（最新）',
  `app_size` varchar(50) NOT NULL DEFAULT '' COMMENT '程序大小（最新）',
  `app_system` varchar(100) NOT NULL DEFAULT '' COMMENT '系统要求（最新）',
  `app_type` varchar(20) NOT NULL DEFAULT '' COMMENT '软件类型：免费/收费',
  `app_logo` varchar(500) NOT NULL DEFAULT '' COMMENT '缩略图',
  `app_desc` text COMMENT '应用详情',
  `app_company` varchar(500) NOT NULL DEFAULT '' COMMENT '开发商',
  `app_company_url` varchar(500) NOT NULL DEFAULT '' COMMENT '开发商网址',
  `app_tags` varchar(1000) NOT NULL DEFAULT '' COMMENT '标签',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '入库时间',
  `app_grade` float NOT NULL DEFAULT '0' COMMENT '用户评分',
  `app_recomment` float NOT NULL DEFAULT '0' COMMENT '系统评分',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '发布人ID',
  `uname` varchar(100) NOT NULL DEFAULT '' COMMENT '发布人',
  `app_comments` int(11) NOT NULL DEFAULT '0' COMMENT '评论量',
  `app_visitors` int(11) NOT NULL DEFAULT '0' COMMENT '浏览量',
  `app_down` int(11) NOT NULL DEFAULT '0' COMMENT '下载量',
  `app_order` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `data_app_id` int(11) NOT NULL DEFAULT '0' COMMENT '数据中心应用ID',
  `charge_app_id` int(11) NOT NULL DEFAULT '0' COMMENT '独立计费包ID',
  `rewrite_tag` varchar(100) NOT NULL DEFAULT '' COMMENT 'app页面伪静态标签',
  PRIMARY KEY (`app_id`),
  KEY `cate_update_time` (`last_cate_id`,`app_update_time`),
  KEY `cate_order` (`last_cate_id`,`app_order`),
  KEY `cate_visitor` (`last_cate_id`,`app_visitors`),
  KEY `cate_create_time` (`last_cate_id`,`create_time`),
  KEY `cate_down` (`last_cate_id`,`app_down`),
  KEY `app_update_time` (`app_update_time`),
  KEY `app_order` (`app_order`),
  KEY `app_down` (`app_down`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='应用表';


DROP TABLE IF EXISTS appcms_cate_relation;
CREATE TABLE `appcms_cate_relation` (
  `relation_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '关系ID',
  `cate_id` int(11) NOT NULL DEFAULT '0' COMMENT '分类ID',
  `type` int(1) NOT NULL DEFAULT '0' COMMENT '类型 0=应用 1=资讯',
  `id` int(11) NOT NULL DEFAULT '0' COMMENT '资讯ID，应用ID',
  `id_down` int(11) NOT NULL DEFAULT '0' COMMENT '下载量',
  `id_order` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `id_update_time` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `id_create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `id_visitors` int(11) NOT NULL DEFAULT '0' COMMENT '访问量',
  PRIMARY KEY (`relation_id`),
  KEY `cate_id` (`cate_id`),
  KEY `id_update_time` (`cate_id`,`id_update_time`),
  KEY `id_down` (`cate_id`,`id_down`),
  KEY `id_order` (`cate_id`,`id_order`),
  KEY `order_id_update` (`cate_id`,`id_order`,`id_update_time`),
  KEY `order_id_down` (`cate_id`,`id_order`,`id_down`),
  KEY `id_visitors` (`cate_id`,`id_visitors`),
  KEY `id_create_time` (`cate_id`,`id_create_time`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COMMENT='分类关系表';


DROP TABLE IF EXISTS appcms_category;
CREATE TABLE `appcms_category` (
  `cate_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '类别id',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT '父类id',
  `cname` varchar(100) NOT NULL DEFAULT '' COMMENT '分类名称',
  `cname_py` varchar(100) NOT NULL DEFAULT '' COMMENT '分类字母别名',
  `ctitle` varchar(500) NOT NULL DEFAULT '' COMMENT 'SEO标题',
  `ckey` varchar(500) NOT NULL DEFAULT '' COMMENT 'SEO关键词',
  `cdesc` varchar(500) NOT NULL DEFAULT '' COMMENT 'SEO描述',
  `corder` int(11) NOT NULL DEFAULT '0' COMMENT '分类排序',
  `cimg` varchar(100) NOT NULL DEFAULT '' COMMENT '分类图片',
  `cat_show` int(2) NOT NULL DEFAULT '1' COMMENT '是否显示分类',
  `tpl_index` varchar(500) NOT NULL DEFAULT '' COMMENT '封面模板',
  `tpl_listvar` varchar(500) NOT NULL DEFAULT '' COMMENT '列表变量模板',
  `tpl_content` varchar(500) NOT NULL DEFAULT '' COMMENT '内容页模板',
  `type` int(2) NOT NULL DEFAULT '0' COMMENT '分类类型：应用=0，资讯=1',
  `cdata` int(11) NOT NULL DEFAULT '0' COMMENT '分类下的数据',
  PRIMARY KEY (`cate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='分类表';


DROP TABLE IF EXISTS appcms_comment;
CREATE TABLE `appcms_comment` (
  `comment_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '评论id',
  `id` int(11) NOT NULL DEFAULT '0' COMMENT '应用id，资讯id',
  `type` int(2) NOT NULL DEFAULT '0' COMMENT '评论类型：应用=0，资讯=1',
  `content` varchar(500) NOT NULL DEFAULT '' COMMENT '评论内容',
  `date_add` int(11) NOT NULL DEFAULT '0' COMMENT '发布时间',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `uname` varchar(500) NOT NULL DEFAULT '' COMMENT '昵称',
  `ip` varchar(20) NOT NULL DEFAULT '0' COMMENT 'ip地址',
  `ip_addr` varchar(200) NOT NULL DEFAULT '' COMMENT '地理位置',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT '上级id',
  `is_check` int(1) NOT NULL DEFAULT '1' COMMENT '是否审核',
  `son` int(11) NOT NULL DEFAULT '0' COMMENT '子评论数',
  `good` int(11) NOT NULL DEFAULT '0' COMMENT '赞',
  `bad` int(11) NOT NULL DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`comment_id`),
  KEY `id_type` (`id`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='评论表';


DROP TABLE IF EXISTS appcms_flink;
CREATE TABLE `appcms_flink` (
  `flink_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '友情ID',
  `flink_name` varchar(100) NOT NULL DEFAULT '' COMMENT '链接文字',
  `flink_img` varchar(500) NOT NULL DEFAULT '' COMMENT '链接图片',
  `flink_url` varchar(500) NOT NULL DEFAULT '' COMMENT '链接地址',
  `flink_is_site` int(2) DEFAULT '0' COMMENT '0=首页，1代表全站',
  `flink_order` int(11) DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`flink_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='友情链接表';


DROP TABLE IF EXISTS appcms_info_list;
CREATE TABLE `appcms_info_list` (
  `info_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '资讯id',
  `last_cate_id` int(11) NOT NULL DEFAULT '0' COMMENT '终极分类ID',
  `info_title` varchar(500) NOT NULL DEFAULT '' COMMENT '标题',
  `info_stitle` varchar(500) NOT NULL DEFAULT '' COMMENT 'SEO标题',
  `info_img` varchar(500) NOT NULL DEFAULT '' COMMENT '缩略图',
  `info_desc` varchar(500) NOT NULL DEFAULT '' COMMENT '摘要',
  `info_body` text COMMENT '详情',
  `info_tags` varchar(1000) NOT NULL DEFAULT '' COMMENT '标签',
  `info_update_time` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `info_from` varchar(500) NOT NULL DEFAULT '' COMMENT '来源',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '发布人ID',
  `uname` varchar(100) NOT NULL DEFAULT '' COMMENT '发布人',
  `info_comments` int(11) NOT NULL DEFAULT '0' COMMENT '评论量',
  `info_visitors` int(11) NOT NULL DEFAULT '0' COMMENT '浏览量',
  `info_order` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `info_url` varchar(500) NOT NULL DEFAULT '' COMMENT '外部URL',
  PRIMARY KEY (`info_id`),
  KEY `cate_update_time` (`last_cate_id`,`info_update_time`),
  KEY `cate_order` (`last_cate_id`,`info_order`),
  KEY `cate_visitor` (`last_cate_id`,`info_visitors`),
  KEY `cate_create_time` (`last_cate_id`,`create_time`),
  KEY `info_update_time` (`info_update_time`),
  KEY `info_order` (`info_order`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='资讯表';


DROP TABLE IF EXISTS appcms_nlink;
CREATE TABLE `appcms_nlink` (
  `nlink_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '内链ID',
  `nlink_txt` varchar(100) NOT NULL DEFAULT '' COMMENT '名称',
  `nlink_url` varchar(500) NOT NULL DEFAULT '' COMMENT '网址',
  PRIMARY KEY (`nlink_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='正文內链词表';


DROP TABLE IF EXISTS appcms_recommend_area;
CREATE TABLE `appcms_recommend_area` (
  `area_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '位置标题',
  `area_type` int(2) NOT NULL DEFAULT '0' COMMENT '位置类型：推荐位（应用）=0，推荐位（资讯）=1，广告=2，专题（应用）=3，专题（资讯）=4',
  `area_html` text COMMENT '广告HTML或者描述文本',
  `area_remarks` varchar(1000) NOT NULL DEFAULT '' COMMENT '备注',
  `area_logo` varchar(200) NOT NULL DEFAULT '' COMMENT '位置LOGO图',
  `area_order` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `id_list` varchar(2000) NOT NULL DEFAULT '' COMMENT '应用或者资讯ID列表，用逗号分割',
  PRIMARY KEY (`area_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='推荐位置（广告，推荐位，专题）';


DROP TABLE IF EXISTS appcms_resource_list;
CREATE TABLE `appcms_resource_list` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '资源',
  `info_app_id` int(11) NOT NULL DEFAULT '0' COMMENT '应用 或资讯ID',
  `type` int(2) NOT NULL DEFAULT '0' COMMENT '关联的类型，应用=0，资讯=1',
  `resource_url` varchar(300) NOT NULL DEFAULT '' COMMENT '资源地址',
  `width` int(11) NOT NULL DEFAULT '0' COMMENT '资源宽度',
  `height` int(11) NOT NULL DEFAULT '0' COMMENT '资源高度',
  `size` int(11) NOT NULL DEFAULT '0' COMMENT '资源大小',
  PRIMARY KEY (`id`),
  KEY `id_type` (`info_app_id`,`type`),
  KEY `resource_url` (`resource_url`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8 COMMENT='资源表';


DROP TABLE IF EXISTS appcms_search_keyword;
CREATE TABLE `appcms_search_keyword` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `q` varchar(200) NOT NULL DEFAULT '' COMMENT '搜索关键字',
  `qnum` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '搜索次数',
  `qorder` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '关键字排序',
  PRIMARY KEY (`id`),
  KEY `qorder` (`qorder`),
  KEY `q` (`q`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='搜索关键字记录表';


DROP TABLE IF EXISTS appcms_url_rewrite;
CREATE TABLE `appcms_url_rewrite` (
  `url_id` int(11) NOT NULL AUTO_INCREMENT,
  `url_title` varchar(400) NOT NULL DEFAULT '' COMMENT '地址名称',
  `url_true` varchar(400) NOT NULL DEFAULT '' COMMENT '真实地址',
  `url_rule` varchar(400) NOT NULL DEFAULT '' COMMENT '伪静态规则',
  PRIMARY KEY (`url_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='伪静态规则表';

