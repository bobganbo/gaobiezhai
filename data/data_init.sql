﻿/*安装初始化数据*/

/*友情链接*/
insert ignore into appcms_flink (flink_id,flink_name,flink_url,flink_is_site) values(1,'AppCMS','http://www.appcms.cc/',0);
insert ignore into appcms_flink (flink_id,flink_name,flink_url,flink_is_site) values(2,'安卓工厂','http://www.an12.com/',0);
insert ignore into appcms_flink (flink_id,flink_name,flink_url,flink_is_site) values(3,'App联盟','http://union.appcms.cc',0);
insert ignore into appcms_flink (flink_id,flink_name,flink_url,flink_is_site) values(4,'安卓网','http://www.androidnet.cn',0);

/*URL伪静态规则*/
insert ignore into appcms_url_rewrite (url_id,url_title,url_true,url_rule) values(1,'list_app','index.php?tpl=list_app&cid={cid}&p={p}','app/list_{cid}_{p}.html');
insert ignore into appcms_url_rewrite (url_id,url_title,url_true,url_rule) values(2,'list_app_index','index.php?tpl=list_app&cid={cid}&p=1','app/list_{cid}.html');
insert ignore into appcms_url_rewrite (url_id,url_title,url_true,url_rule) values(3,'cpy_list_app','index.php?tpl=list_app&cpy={cpy}&p={p}','app/{cpy}/{p}.html');
insert ignore into appcms_url_rewrite (url_id,url_title,url_true,url_rule) values(4,'cpy_list_app_index','index.php?tpl=list_app&cpy={cpy}&p=1','app/{cpy}/');
insert ignore into appcms_url_rewrite (url_id,url_title,url_true,url_rule) values(5,'search','index.php?tpl=search&q={q}&p={p}','index.php?tpl=search&q={q}&p={p}');
insert ignore into appcms_url_rewrite (url_id,url_title,url_true,url_rule) values(6,'special_list','index.php?tpl=special_list&p={p}','sepcial/list_{p}.html');
insert ignore into appcms_url_rewrite (url_id,url_title,url_true,url_rule) values(7,'special_list_index','index.php?tpl=special_list&p=1','sepcial/');
insert ignore into appcms_url_rewrite (url_id,url_title,url_true,url_rule) values(8,'special_content','index.php?tpl=special_content&id={id}','special/{id}.html');
insert ignore into appcms_url_rewrite (url_id,url_title,url_true,url_rule) values(9,'list_info','index.php?tpl=list_info&cid={cid}&p={p}','info/list_{cid}_{p}.html');
insert ignore into appcms_url_rewrite (url_id,url_title,url_true,url_rule) values(10,'list_info_index','index.php?tpl=list_info&cid={cid}&p=1','info/list_{cid}.html');
insert ignore into appcms_url_rewrite (url_id,url_title,url_true,url_rule) values(11,'cpy_list_info','index.php?tpl=list_info&cpy={cpy}&p={p}','info/{cpy}/{p}.html');
insert ignore into appcms_url_rewrite (url_id,url_title,url_true,url_rule) values(12,'cpy_list_info_index','index.php?tpl=list_info&cpy={cpy}&p=1','info/{cpy}/');
insert ignore into appcms_url_rewrite (url_id,url_title,url_true,url_rule) values(13,'content_info','index.php?tpl=content_info&id={id}','info/{id}.html');
insert ignore into appcms_url_rewrite (url_id,url_title,url_true,url_rule) values(14,'content_app','index.php?tpl=content_app&id={id}','app/{id}.html');
insert ignore into appcms_url_rewrite (url_id,url_title,url_true,url_rule) values(15,'content_app_history','index.php?tpl=content_app_history&id={id}&hid={hid}','app/{id}_{hid}.html');
insert ignore into appcms_url_rewrite (url_id,url_title,url_true,url_rule) values(16,'search_index','index.php?tpl=search&q={q}','index.php?tpl=search&q={q}');
insert ignore into appcms_url_rewrite (url_id,url_title,url_true,url_rule) values(17,'lastupdate','index.php?tpl=lastupdate&p={p}','lastupdate/{p}.html');
insert ignore into appcms_url_rewrite (url_id,url_title,url_true,url_rule) values(18,'lastupdate_index','index.php?tpl=lastupdate&p=1','lastupdate/');
insert ignore into appcms_url_rewrite (url_id,url_title,url_true,url_rule) values(19,'img','pic.php?url={url}&type={type}','image/{url}.{type}');
insert ignore into appcms_url_rewrite (url_id,url_title,url_true,url_rule) values(20,'content_info_list','index.php?tpl=content_info&id={id}&p={p}','info/{id}_{p}.html');
/*默认分类*/
INSERT ignore INTO `appcms_category` VALUES (1, 0, '软件', 'soft', '', '', '', 0, '', 1, '', '', '', 0, 12);
INSERT ignore INTO `appcms_category` VALUES (2, 0, '游戏', 'game', '', '', '', 0, '', 1, '', '', '', 0, 7);

INSERT ignore INTO `appcms_category` VALUES (3, 1, '系统输入', 'sysinput', '', '', '', 0, '', 1, '', '', '', 0, 2);
INSERT ignore INTO `appcms_category` VALUES (4, 1, '聊天通讯', 'chat', '', '', '', 0, '', 1, '', '', '', 0, 3);
INSERT ignore INTO `appcms_category` VALUES (5, 1, '网络邮件', 'netmail', '', '', '', 0, '', 1, '', '', '', 0, 0);
INSERT ignore INTO `appcms_category` VALUES (6, 1, '影音图像', 'movie', '', '', '', 0, '', 1, '', '', '', 0, 4);
INSERT ignore INTO `appcms_category` VALUES (7, 1, '阅读学习', 'study', '', '', '', 0, '', 1, '', '', '', 0, 2);
INSERT ignore INTO `appcms_category` VALUES (8, 1, '生活地图', 'lifemap', '', '', '', 0, '', 1, '', '', '', 0, 1);
INSERT ignore INTO `appcms_category` VALUES (9, 1, '办公商务', 'office', '', '', '', 0, '', 1, '', '', '', 0, 0);
INSERT ignore INTO `appcms_category` VALUES (10, 1, '壁纸主题', 'wallpaper', '', '', '', 0, '', 1, '', '', '', 0, 0);

INSERT ignore INTO `appcms_category` VALUES (11, 2, '角色扮演', 'role', '', '', '', 0, '', 1, '', '', '', 0, 0);
INSERT ignore INTO `appcms_category` VALUES (12, 2, '休闲益智', 'lifeedu', '', '', '', 0, '', 1, '', '', '', 0, 4);
INSERT ignore INTO `appcms_category` VALUES (13, 2, '动作冒险', 'actrisk', '', '', '', 0, '', 1, '', '', '', 0, 1);
INSERT ignore INTO `appcms_category` VALUES (14, 2, '网络游戏', 'netgames', '', '', '', 0, '', 1, '', '', '', 0, 0);
INSERT ignore INTO `appcms_category` VALUES (15, 2, '体育竞速', 'sports', '', '', '', 0, '', 1, '', '', '', 0, 1);
INSERT ignore INTO `appcms_category` VALUES (16, 2, '飞行射击', 'flyshoot', '', '', '', 0, '', 1, '', '', '', 0, 0);
INSERT ignore INTO `appcms_category` VALUES (17, 2, '经营策略', 'business', '', '', '', 0, '', 1, '', '', '', 0, 1);
INSERT ignore INTO `appcms_category` VALUES (18, 2, '棋牌天地', 'chess', '', '', '', 0, '', 1, '', '', '', 0, 0);

INSERT ignore INTO `appcms_category` VALUES (19, 0, '评测', 'review', '', '', '', 0, '', 1, '', '', '', 1, 1);

/*默认首页推荐位*/
insert ignore into appcms_recommend_area(area_id,title,area_type,area_remarks,id_list) values(1,'每日推荐',0,'首页右边推荐位，每天一个推荐','1');
insert ignore into appcms_recommend_area(area_id,title,area_type,area_remarks,id_list) values(2,'精品推荐',0,'首页左边的精品推荐位，一般15条数据','1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19');
insert ignore into appcms_recommend_area(area_id,title,area_type,area_remarks,id_list) values(3,'游戏排行',0,'首页的游戏排行推荐位，一般10条数据','1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16');
insert ignore into appcms_recommend_area(area_id,title,area_type,area_remarks,id_list) values(4,'应用排行',0,'首页的应用排行推荐位，一般10条数据','2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17');
insert ignore into appcms_recommend_area(area_id,title,area_type,area_remarks,id_list) values(5,'下载排行',0,'首页的下载排行推荐位，一般10条数据','3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18');
insert ignore into appcms_recommend_area(area_id,title,area_type,area_remarks,id_list) values(6,'上升最快',0,'首页靠近右边的推荐位，一般10条数据','4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19');

/*默认专题9条*/
insert ignore into appcms_recommend_area(area_id,title,area_type,area_logo,id_list) values(7,'装机必备软件',3,'templates/default/css/img/special/a1.png','1,2,3,4,5');
insert ignore into appcms_recommend_area(area_id,title,area_type,area_logo,id_list) values(8,'你猜我猜疯狂猜',3,'templates/default/css/img/special/a2.jpg','3,4,5,6,7');
insert ignore into appcms_recommend_area(area_id,title,area_type,area_logo,id_list) values(9,'纯洁的马赛克',3,'templates/default/css/img/special/a3.jpg','5,6,7,8,9');
insert ignore into appcms_recommend_area(area_id,title,area_type,area_logo,id_list) values(10,'OMI获奖作品集锦',3,'templates/default/css/img/special/a4.jpg','7,8,9,10,11');
insert ignore into appcms_recommend_area(area_id,title,area_type,area_logo,id_list) values(11,'妈妈，我来守护你',3,'templates/default/css/img/special/a5.jpg','9,10,11,12,13');
insert ignore into appcms_recommend_area(area_id,title,area_type,area_logo,id_list) values(12,'节日消费，你说了算',3,'templates/default/css/img/special/a6.jpg','11,12,13,14,15');
insert ignore into appcms_recommend_area(area_id,title,area_type,area_logo,id_list) values(13,'钱途，从薪开始',3,'templates/default/css/img/special/a7.jpg','13,14,15,16,17');
insert ignore into appcms_recommend_area(area_id,title,area_type,area_logo,id_list) values(14,'经典怀旧游戏',3,'templates/default/css/img/special/a8.jpg','15,16,17,18,19');
insert ignore into appcms_recommend_area(area_id,title,area_type,area_logo,id_list) values(15,'大作烧机必玩',3,'templates/default/css/img/special/a9.jpg','1,3,5,7,9');

/*默认广告位2条*/
insert ignore into appcms_recommend_area(area_id,title,area_type,area_remarks,area_html) values(16,'首页第一屏幻灯广告',2,'宽高720*200','a:2:{s:4:"type";s:1:"2";s:9:"area_html";a:3:{i:0;a:4:{s:5:"title";s:7:"iReader";s:4:"desc";s:0:"";s:3:"url";s:50:"http://mkt.an12.com/api/www.an12.com_1.39_an12.apk";s:12:"resource_url";s:47:"templates/default/css/img/index_top_left/a1.jpg";}i:1;a:4:{s:5:"title";s:12:"旋风跑跑";s:4:"desc";s:0:"";s:3:"url";s:50:"http://mkt.an12.com/api/www.an12.com_1.39_an12.apk";s:12:"resource_url";s:47:"templates/default/css/img/index_top_left/a2.jpg";}i:2;a:4:{s:5:"title";s:15:"饥饿的兔子";s:4:"desc";s:0:"";s:3:"url";s:50:"http://mkt.an12.com/api/www.an12.com_1.39_an12.apk";s:12:"resource_url";s:47:"templates/default/css/img/index_top_left/a3.jpg";}}}');
insert ignore into appcms_recommend_area(area_id,title,area_type,area_remarks,area_html) values(17,'装机必备软件',2,'宽高230*200','a:2:{s:4:"type";s:1:"2";s:9:"area_html";a:1:{i:0;a:4:{s:5:"title";s:18:"装机必备软件";s:4:"desc";s:0:"";s:3:"url";s:50:"http://mkt.an12.com/api/www.an12.com_1.39_an12.apk";s:12:"resource_url";s:44:"templates/default/css/img/index_right/a2.jpg";}}}');

/*应用列表*/
INSERT ignore INTO `appcms_app_list` VALUES (1, 4, '微信', '', '4.5.1', 1373702101, '18.61MB', 'Android 2.1.x以上 ', '免费', 'http://img01.appcms.cc/20130707/t017/t017503dcb714415bd1.png', '\r\n											微信超过3亿人使用曾在27个国家和地区的App Store排行榜上排名第一。<br />\n微信能够通过手机网络给好友发送语音、文字消息、表情、图片和视频你还可以分享照片到朋友圈。通过摇一摇、查看附近的人你可以认识新的朋友。使用扫一扫你可以扫描二维码。与公众号互动你还能够听明星唱歌、看新闻、设提醒。<br />\n微信在iPhone、Android、Symbian、Windows Phone、BlackBerry等手机平台上都可以使用并提供多种语言界面。<br />\n <br />\n【功能特色】<br />\n1、实时对讲多人实时语音聊天；<br />\n2、将正在听的歌曲摇到手机里；<br />\n3、群聊支持二维码扫一扫就能加入；<br />\n4、聊天记录可以迁移到另外的手机上；<br />\n5、可以设置语音提醒重要事项不再错过；<br />\n6、语音可以撤销发送；<br />\n7、可以回复陌生人的打招呼还能加备注；<br />\n8、朋友发来的位置可以导航。										', '腾讯', '', '', 1373702101, 0, 7.4, 0, '', 0, 0, 111551609, 0, 23877, 0, '');
INSERT ignore INTO `appcms_app_list` VALUES (2, 3, '360手机卫士', '', '4.1.0', 1373702102, '10.68MB', 'Android 2.2.x以上 ', '免费', 'http://img01.appcms.cc/20130707/t013/t0130bebbba1a6714af.png', '\r\n											永久免费!软件安装实时检测联网行为实时监控安全扫描联网云查杀恶意软件。自动IP拨号节省长途话费;响一声提醒号码归属查询系统一键清理。拦截垃圾短信和骚扰来电还您清静的手机空间;隐私通讯记录加密保存保护您的个人隐私;来去电归属地显示和查询通话信息一目了然;响一声吸费电话提醒防止回拨扣费;一键清理非系统进程提升手机运行速度。<br />\r\n绿色、安全、免费、好用。<br />\r\n注:Android手机卫士适用于使用标准android系统的GSM/WCDMA手机<br />\r\n<br />\r\n注意:本版不适用于双模、ophone、乐phone、魅族M9及其它非标准Android系统的手机。<br/>【更新内容】<br/>1、防盗功能全新改版，支持360帐号绑定多台手机；<br />\r\n2、网页防盗震撼登场，随时随地找回被盗手机；<br />\r\n3、新增安装包清理功能，整理多余安装包，轻松释放空间；<br />\r\n4、新增锁屏流量提醒功能，偷跑流量一目了然。										', '北京奇虎科技有限公司', '', '', 1373702102, 0, 8.2, 0, '', 0, 0, 159930295, 0, 2447, 0, '');
INSERT ignore INTO `appcms_app_list` VALUES (3, 17, '保卫萝卜', '', '1.1.0', 1373702103, '32.4MB', 'Android 2.2.x以上', '', 'http://img01.appcms.cc/20130707/t015/t015d576638be4f3b58.png', '<b>提示：海洋关卡和怪物窝来啦！风靡IOS的塔防经典游戏“保卫萝卜”，携手360手机助手登录安卓，全球首发！！！i9100用户请在主界面上关闭声音后体验游戏，抢鲜版本，关卡和性能不断完善中，敬请关注！</b><br/>继保卫萝卜Android版《深海：巨鲸的领地》开放后，萝卜团队再次携手全新主题包《Extreme：挑战》迎来更新！长居AppStore亚洲各市场榜首的大热休闲策略游戏迎来重磅更新，超爽地图包《Extreme:挑战》终于开放！！27张极限地图等你来挑战！<br />\r\n<br />\r\n长居AppStore亚洲各市场榜首的大热休闲策略游戏——“保卫萝卜”迎来更新，众萝卜丝们翘首企盼的《深海：巨鲸的领地》主题包终于开放啦！！<br />\r\n萝卜穿上潜水服误入了巨鲸的领地，5个全新的炮塔加入保卫者的行列（炮塔总数18个），等你来挑战！<br />\r\n进入超过70个国家总榜、游戏榜TOP10，在整个亚太地区各市场排行榜TOP1-TOP5，欧美地区43个国家TOP25，被全球101个国家推荐为“热门游戏”，短短100天超过1000万次下载，好评如潮！！怎能错过！！ <br />\r\n<br />\r\n这是一款制作精美、真正可爱范儿的超萌塔防游戏~~!!! <br />\r\n容易上手、老少皆宜、带给你无法割舍的小快乐！ <br />\r\n你的任务就是保护好可爱的萝卜别让怪物吃掉它哦~~ <br />\r\n内置新手引导只需5秒从菜鸟变高手!! <br />\r\n<br />\r\n游戏特色： <br />\r\n*70个关卡4套精美的主题包，从天际到丛林、从沙漠再到深海，隐藏关卡等你来发现! <br />\r\n*16关独一无二的创新BOSS模式地图，让塔防通过限时MINIGAME方式玩出花样、玩出乐趣! <br />\r\n*18个风格独特的防御塔，鱼刺塔、太阳花、便便塔、船锚塔…..更多花样等你探索~ <br />\r\n*将宝贝掉落、收集加入到超萌可爱的塔防游戏过程中，在保卫萝卜的同时还可以收集怪物和宝贝，20个精美怪异的怪物蛋等你来发现！<br />\r\n*新增怪物养成系统，把收集来的怪物蛋孵化成萌死人的怪物宝宝，把它们养大后将会解锁隐藏地图！<br />\r\n*地图上精美的障碍物里，藏着许多宝贝和惊喜，打掉它挖掘宝藏吧！<br />\r\n*70+个搞笑滑稽的怪物它们有着奇怪的名字:Woowala、Pinky Ninja 、Twisty Fork…… <br />\r\n*100+ 滑稽的音效每个怪物和塔都会发出独特有趣的声音! <br />\r\n*每个关卡只有15-25波怪物碎片时间就可以玩的很过瘾啦! <br />\r\n*支持Game Center，好多成就等你来完成！！<br/>【更新内容】<br/>① 新增全新主题包《Extreme：挑战》<br />\r\n② 修复了删掉闪电炮塔后引起鱼刺炮塔无效的问题<br />\r\n③ 优化了卡死、跳出等严重影响游戏体验的性能问题<br />\r\n④ 修复了部分机型深海第三关闪退的bug，如三星S5830i<br />\r\n⑤ 增加宝石兑换道具提示<br />\r\n⑥ 修复了部分机型游戏过程中出现黑屏的问题<br />\r\n⑦ 微调游戏平衡', '北京凯罗天下科技有限公司', '', '', 1373702103, 0, 8, 0, '', 0, 0, 32030860, 0, 137688, 0, '');
INSERT ignore INTO `appcms_app_list` VALUES (4, 12, '找你妹致青春', '', '4.2.0', 1373702104, '59.27MB', 'Android 2.2.x以上', '', 'http://img01.appcms.cc/20130707/t013/t013d2f01cea4753aa3.png', '★iOS平台最热门最创意找图RPG游戏如今强势登陆安卓平台<br />\r\n★苹果官方App Store官方新品推荐游戏&amp;时下热门游戏★<br />\r\n★中国大陆分类排名Top1台湾地区游戏分类排名Top1多个国家地区进入分类Top10App Store 超过300万火热下载全球数万评价平均4.7星★<br />\r\n别自找烦恼快来“找你妹”!<br />\r\n擦亮你的眼睛纷繁的世界中有太多目标值的你去寻找! 游戏风格风趣幽默美术风格独特上手简单却充满刺激挑战乐趣无穷。<br />\r\n游戏结合经典找图系列游戏和RPG游戏元素玩家在游戏中培养角色完成任务升级各类牛B技能。还能使用多种道具在困难时刻助你克服困难找到目标。<br/>【更新内容】<br/>1. 超级给力！加入上千种全新物件，让您找到手软不罢休！<br />\r\n2. 全新关卡加入，神秘Boss等着你<br />\r\n3. 全新搞笑故事加入，捧腹找图两不误！<br />\r\n4. 进行大量优化工作', '北京分播时代网络科技有限公司', '', '', 1373702104, 0, 8.1, 0, '', 0, 0, 30378634, 0, 129476, 0, '');
INSERT ignore INTO `appcms_app_list` VALUES (5, 13, '神庙逃亡2', '', '1.1.4-0002', 1373702105, '27.45MB', 'Android 2.1.x以上', '', 'http://img01.appcms.cc/20130707/t01a/t01a46fe79998dae9c5.png', '<b>提示：360全球首发中文官方版，新版更新解决存档覆盖问题！如在游戏体验过程中遇到任何问题，请您发送邮件至m-kefu@360.cn</b><br/>提示：如在游戏体验过程中遇到任何问题，请发送邮件至kefu@idreamsky.com。<br />\n    最热门的跑酷游戏神庙逃亡2又迎来更新！<br />\n    本次更新带增加了更多赚取金币的方法。每日挑战和每周挑战带来更多玩法和丰厚回报，还有神秘大奖等你拿！<br />\n    ★炫目的新场景<br />\n    ★华丽的新体验<br />\n    ★添加多个新障碍<br />\n    ★添加新能量道具<br />\n    ★更多成就<br />\n    ★每个英雄都拥有特殊技能<br />\n    ★超级无敌大猩猩！！！<br/>【更新内容】<br/>1.新增日挑战，周挑战，挑战成功获得神秘奖品；<br />\r\n2.新增优惠大礼包；<br />\r\n3.修改了部分任务无法完成的bug；<br />\r\n4.延长了部分特殊能力的有效时间；<br />\r\n5.吃到加速道具后，加速能力的能量槽不再清空；<br />\r\n6.修正了其他部分BUG。', '深圳市创梦天地科技有限公司', '', '', 1373702105, 0, 6.7, 0, '', 0, 0, 47799422, 0, 124036, 0, '');
INSERT ignore INTO `appcms_app_list` VALUES (6, 4, '360安全通讯录', '', '1.6.0', 1373702106, '3.92MB', 'Android 2.0以上 ', '免费', 'http://img01.appcms.cc/20130707/t01f/t01f999eee13d80e547.png', '\r\n											1、使用安全通讯录，可以最大限度的拦截骚扰电话与垃圾短信，通话过程防窃听，保障日常通讯安全。<br />\r\n2、支持通过T9键盘的方式，快速帮你找到联系人。并且随着不断的使用，安全通讯录独有联系人排序优化，让搜索变得更加快捷。<br />\r\n3、显示来电和去点的归属地，短信弹窗预览和快速回复，支持自动IP拨号，智能识别响一声来电和骚扰电话，省心又省力。<br />\r\n4、支持语音短信和图片短信发送，群发历史记录管理，联系人头像自动补全，短信聊天背景…更多有趣实用的功能等你发现！<br />\r\n5、分组间联系人列表可快速切换。新建联系人更有序，管理联系人更便捷。<br />\r\n6、拨“#”启动应用快拨模式；拨“**密码**”启动隐私收件箱。<br/>【更新内容】<br/>1、新增短信加速，清理无用短信，保持收件箱更健康；<br />\r\n2、实现自动清除未接来电，一键开启通讯安全防护（需Root权限）；<br />\r\n3、短信弹窗全新改版，使用更贴心；<br />\r\n4、短信列表状态优化，信息状态一目了然；<br />\r\n5、短信搜索匹配联系人名字，查找“他or她”的短信不再烦恼；<br />\r\n6、多项数据性能优化，启动更快速。										', '北京奇虎科技有限公司', '', '', 1373702106, 0, 5.9, 0, '', 0, 0, 10128890, 0, 91149, 0, '');
INSERT ignore INTO `appcms_app_list` VALUES (7, 12, '鳄鱼小顽皮爱洗澡', '', '1.12.0', 1373702107, '48.77MB', 'Android 2.1.x以上 ', '', 'http://img01.appcms.cc/20130707/t015/t0154db8f6930e6a764.png', '\r\n											<b>提示：官方完整版，试玩10分钟后按照提示完成付费（6元）即可开启对应故事关卡，完整版本请根据游戏提示完成付费解锁。如在游戏体验或者支付过程中遇到问题，请发送邮件至m-kefu@360.cn。</b><br/>鳄鱼小顽皮爱洗澡是一部基于物理原理的解谜游戏它拥有动感图像直观的控制及出色的音质效果。要想过关您需要充分开动你的脑筋另外还要小心藻类、有毒泥水机关和陷阱。<br />\r\n<br />\r\n3个故事 3个独立游戏   总数超过400个关卡更新!<br />\r\n<br />\r\n小顽皮的故事<br />\r\n帮助小顽皮把水引到他的浴池!10个主题章节超过200个关卡。收集小顽皮的橡皮鸭和洗澡用的物品解锁新的关卡和奖励关卡。<br />\r\n<br />\r\n大顽固的故事<br />\r\n大顽固很难对付他的章节更难突破!在应用程序内直接购买再获得80个更有趣的关卡!<br />\r\n<br />\r\n失落的关卡<br />\r\n这个系列来自小顽皮的其他冒险它一直在增加!<br />\r\n<br />\r\n神秘鸭关卡<br/>【更新内容】<br/>1. 新增“爱丽的故事”<br />\r\n2. “神秘鸭的故事” 新增40小关<br />\r\n3. 新增“本周关卡”功能，循环展示试玩关卡										', '北京触控科技有限公司', '', '', 1373702107, 0, 6.2, 0, '', 0, 0, 25277829, 0, 88625, 0, '');
INSERT ignore INTO `appcms_app_list` VALUES (8, 6, '唱吧', '', '4.0.0', 1373702108, '8.07MB', 'Android 2.2.x以上 ', '免费', 'http://img01.appcms.cc/20130707/t01c/t01ce5eed7ba5c4b392.png', '\r\n											唱吧-最时尚的手机KTV，国内人气最高的手机K歌社区。<br />\r\n唱吧4.0，让你成为MV的主角！<br />\r\n--------------------------------------<br />\r\n <br />\r\n放在口袋里的KTV<br />\r\n-打开就能唱，附带上万首经典曲目<br />\r\n-你随时可以将你唱的歌保存起来<br />\r\n-出色的字幕效果，媲美KTV<br />\r\n-支持分类点歌、歌星点歌等多种点歌方式<br />\r\n-专属的播放器模式，可自动连播，并收藏你喜欢的歌曲<br />\r\n <br />\r\n人气最高的K歌社区<br />\r\n-上传你的作品到唱吧里，让成千上万的人听到<br />\r\n-只有在这，你才能体会到数万人听你唱歌、送花、写评论的感觉<br />\r\n-不经意间，你可能就会成为有数万人关注的明星<br />\r\n-你也可以将给力歌曲直接转发推荐给唱吧好友们，秀出独特音乐品味<br />\r\n <br />\r\n发现每个城市的好声音<br />\r\n-完全自动按照城市分区，来看看国内不同地区的唱歌风格吧<br />\r\n-你可以进入任何一个区域，成为那里的明星<br />\r\n-你亦可以听听你家乡的人现在在唱什么歌<br />\r\n-你甚至可以到各个城市巡回演出，开演唱会<br />\r\n-也可以看看附近的人在唱什么歌<br />\r\n <br />\r\n炫酷MV模式<br />\r\n-欣赏歌友的MV，曾经只能听声音，现在如同亲临现场，给你全新视听体验<br />\r\n <br />\r\n耳目一新的礼物系统<br />\r\n-红玫瑰、彩虹玫瑰各种鲜花让收到礼物的人欣喜不已<br />\r\n-你可以随时看到谁为你赠送的礼物最多<br />\r\n-你还可以让为你的偶像赠送高级鲜花，让他/她立刻登上推荐榜<br />\r\n<br />\r\n聪明好用的调音助手<br />\r\n-这里没有复杂的设置项，完全自动美化你的声音<br />\r\n-你也可以经过几次简单的点击，获得更动听的声音<br />\r\n-预置萌猫、娃娃音等多种有趣的声音特效等你来体验<br />\r\n <br />\r\n内置聊天功能<br />\r\n-你可以和你的粉丝们一对一的聊天<br />\r\n-语音消息也同样可以发送<br />\r\n <br />\r\n全面的分享支持<br />\r\n-你可以在唱吧里唱首歌然后用微信发你的朋友们<br />\r\n-也可以直接分享给QQ空间、腾讯微博、新浪微博、人人网的好友们<br />\r\n <br />\r\n唱吧的最新动态请关注唱吧官方微博<br />\r\n新浪微博：@唱吧<br />\r\n腾讯微博：@唱吧<br/>【更新内容】<br/>1、支持视频播放，如果担心流量问题，也可选择传统图片轮播模式；<br />\r\n2、支持歌曲转发，将给力歌曲直接转发推荐给唱吧好友们；<br />\r\n3、优化首页榜单，页面显示更清新，信息展现更直观；<br />\r\n4、搜索歌曲支持智能提示，减少输入，更方便地找到想要唱的歌。										', '北京酷智科技有限公司', '', '', 1373702108, 0, 6.5, 0, '', 0, 0, 19504782, 0, 80353, 0, '');
INSERT ignore INTO `appcms_app_list` VALUES (9, 12, '捕鱼达人2', '', '1.1.3', 1373702109, '35.95MB', 'Android 2.2.x以上 ', '', 'http://img01.appcms.cc/20130707/t017/t01728cb96b8c579ac0.png', '\r\n											<b>提示：官方免激活版本，告别付费解锁！ 如在游戏体验或者支付过程中遇到问题，请发送邮件至m-kefu@360.cn。</b><br/>风靡全球广受亿万玩家喜爱的捕鱼游戏——捕鱼达人推出新作啦! <br />\r\n<br />\r\n捕鱼达人2(Fishing Joy2)在继承1代传统玩法的同时，还推出了全新的特色玩法，新开放渔场内的倍率选择多种倍率与多级武器自由组合满足玩家多样的捕鱼策略，除了闪亮金币捕获鱼儿还有可能掉落卡牌，各色精美卡牌对应不同小游戏与随机事件令捕鱼趣味倍增。每日可多次领取免费金币更可抽取幸运大奖!<br/>【更新内容】<br/>1.新增金币包，金币更加优惠，捕鱼更轻松。<br />\r\n2.调整资源加载逻辑，游戏过程更加流畅。<br />\r\n3.优化渲染过程，游戏更加省电。										', '北京触控科技有限公司', '', '', 1373702109, 0, 4.8, 0, '', 0, 0, 39189622, 0, 77649, 0, '');
INSERT ignore INTO `appcms_app_list` VALUES (10, 15, '3D摩托', '', '1.4.1', 1373702110, '25.04MB', 'Android 2.2.x以上 ', '免费', 'http://img01.appcms.cc/20130707/t012/t01238735a546f52fc6.png', '\r\n											　　《3D摩托3D MOTO》是一款公路狂飙的赛车游戏。Windows Phone Store上最火的摩托游戏AE 3D Motor安卓版来了!快来比比谁更厉害吧!<br />\n<br />\n　　抢眼的3D设计逼真的场景和车辆让人着迷上癮的高度可玩性平滑的重力感应控制以及生动的声效这些会给你一个真实的摩托赛车体验!阳光沙滩、生长着仙人掌的沙漠、以及雄伟的大桥是游戏中三个魅力场景;不同视角的切换给你带来奇妙的驾驶体验。哇!惊心动魄!<br />\n<br />\n游戏特色<br />\n- 点按屏幕可加速摩托车还可获得双倍计分。 　　<br />\n- 左右倾斜您的手机来控制行驶方向。　 　　<br />\n- 时刻注意路况变化。　 　　<br />\n- 近身超车可获得奖励分。										', 'AE_Mobile', '', '', 1373702110, 0, 5.6, 0, '', 0, 0, 24467067, 0, 70094, 0, '');
INSERT ignore INTO `appcms_app_list` VALUES (11, 3, '360手机助手', '', '1.9.96', 1373702111, '3.27MB', 'Android 2.1.x以上 ', '免费', 'http://img01.appcms.cc/20130707/t017/t017b573e459a44c533.png', '\r\n											360手机助手，您手机上的软件管家！<br />\n数十万款Android软件和游戏供您下载，360安全中心检测全方位安全保障。每天推荐最火热的应用和最好玩的游戏，让您轻松成为时尚的玩机达人。<br />\n安装360手机助手，瞬间下软件，畅玩编辑精选游戏，随时管理手机软件，是您Android手机的必备首选！<br/>【更新内容】<br/>1、优化分享给附近的人功能，带来一个全新更快捷的分享体验；<br />\n2、程序瘦身，让助手运行更高效、快捷；<br />\n3、界面细节优化，每一版本我们都在努力做到更好；<br />\n4、修复若干BUG，提升使用体验。										', '北京奇虎科技有限公司', '', '', 1373702111, 0, 7.1, 0, '', 0, 0, 20516381, 0, 54769, 0, '');
INSERT ignore INTO `appcms_app_list` VALUES (12, 4, '手机QQ2013', '', '4.2.0', 1373702112, '24.3MB', 'Android 2.1.x以上 ', '免费', 'http://img01.appcms.cc/20130707/t01b/t01b5ad73ba09222743.png', '\r\n											手机QQ是由腾讯公司打造的移动互联网应用，提供免费的多媒体沟通服务，方便用户在移动设备上通过语音、图片、视频等方式轻松交流。手机QQ，只想与你更接近。<br/>【更新内容】<br/>1.个性主题，我有我的个性；<br />\n2.多彩气泡，多彩沟通；<br />\n3.原创表情，更有趣的聊天；<br />\n4.手势密码，保护隐私安全；<br />\n5.QQ邮箱提醒，快捷的收发邮件										', '腾讯', '', '', 1373702112, 0, 4.4, 0, '', 0, 0, 93093558, 0, 52031, 0, '');
INSERT ignore INTO `appcms_app_list` VALUES (13, 6, '美图秀秀', '', '2.9.0.2', 1373702113, '27.81MB', 'Android 2.2.x以上 ', '免费', 'http://img01.appcms.cc/20130707/t016/t016f67dd004b495001.png', '\r\n											【人像美容】<br />\r\n磨皮美白:一键磨皮+美白，还可以调整肤色哦；<br />\r\n祛斑祛痘:轻轻一点，小痘痘不见了；<br />\r\n瘦脸瘦身:手指轻轻一推，哪里想瘦推哪里；<br />\r\n祛黑眼圈:快速抹去倦容，告别熊猫眼；<br />\r\n眼睛放大:告诉你瞬间放大眼睛的小秘密；<br />\r\n神奇亮眼：轻轻一抹，闪亮双眸，打造无痕眼妆效果<br />\r\n【美化图片】<br />\r\n裁剪、旋转、锐化、马赛克等基础操作一应俱全；数十种特效和边框，1秒钟让照片变美丽<br />\r\n【拼图】<br />\r\n模板拼图、自由拼图、图片拼接，海报拼图四大拼图模式打造属于你的个性照片墙<br />\r\n【素材中心】<br />\r\n免费使用海量高品质个性素材，每周不断更新<br />\r\n【分享】<br />\r\n支持分享到微信、新浪微博、 QQ空间、腾讯微博、人人网<br />\r\n<br />\r\n<br />\r\n友情提醒:<br />\r\n1.用户反应图片上传微博变小的问题是因为从微博客户端发送时被默认缩小了建议大家用美图秀秀直接发送图片就不会被压缩。<br />\r\n2. 欢迎大家多提意见意见反馈邮箱是android@meitu.com<br/>【更新内容】<br/>1、【智能美容】惊艳上线，一键美容soeasy！<br />\r\n2、特效全面升级，新增七大精品特效，效果更佳！<br />\r\n3、素材中心全面改版，素材更多，下载更流畅。										', '厦门美图网科技有限公司', '', '', 1373702113, 0, 8.6, 0, '', 0, 0, 35140435, 0, 51726, 0, '');
INSERT ignore INTO `appcms_app_list` VALUES (14, 8, '支付宝钱包（支付宝官方客户端）', '', '7.1.0.0701', 1373702114, '7.04MB', 'Android 2.2.x以上 ', '免费', 'http://img01.appcms.cc/20130707/t01b/t01bcb51a6c734d8483.png', '\r\n											支付宝钱包是国内领先的移动支付平台，支持多款精品应用安全登录，更有余额宝理财神器，是数千万人信赖的贴身资产管家。用支付宝钱包，还信用卡、转账、付款、收款、充值、缴费、卡券管理，轻松搞定。<br/>【更新内容】<br/>【主要功能】<br />\r\n1、开放平台，支持精品应用安全登录；<br />\r\n2、支持余额宝，理财神器随身携带；<br />\r\n3、随时随地查询淘宝账单、账户余额、物流信息；<br />\r\n4、免费异地跨行转账，信用卡还款、充值、缴水电煤气费；<br />\r\n5、待办事项管理，还信用卡、付款、缴费、充值、卡券信息智能提醒。<br />\r\n<br />\r\n【更新信息】<br />\r\n1）全新开放平台，安全登录精品应用；<br />\r\n2）支持余额宝，理财神器随身携带；<br />\r\n3）按交易方查询资金往来；<br />\r\n4）增加银行网点查询。<br />\r\n<br />\r\n【问题修复】<br />\r\n修复已知其他问题。										', '支付宝（中国）网络技术有限公司', '', '', 1373702114, 0, 8, 0, '', 0, 0, 14423465, 0, 51061, 0, '');
INSERT ignore INTO `appcms_app_list` VALUES (15, 7, '有道词典', '', '4.0.3', 1373702115, '21.01MB', 'Android 2.2.x以上 ', '免费', 'http://img01.appcms.cc/20130707/t017/t0178b25dfe220b0268.png', '\r\n											有道词典是网易有道出品的互联网时代词典软件，是最受欢迎的词典软件。目前已经有超过1.5亿的手机用户。<br />\r\n有道词典本地增强版是您随身携带的多语种互译词典，让您在离线时也可轻松查询，内置超过340000条英汉词汇以及超过350000条的汉英词汇。<br/>【更新内容】<br/>1、本地词库扩容至12万，并包含词态变形数据；<br />\r\n2、查词结果中的任意英文单词支持点击查看释义；<br />\r\n3、调整从网络加载的词典的顺序，更易浏览；<br />\r\n4、联网功能优化，节省流量；<br />\r\n5、云图书支持一键下载；<br />\r\n6、云图书词汇书更新，加入背单词模式。										', '网易有道信息技术（北京）有限公司', '', '', 1373702115, 0, 6.3, 0, '', 0, 0, 23751513, 0, 50953, 0, '');
INSERT ignore INTO `appcms_app_list` VALUES (16, 7, '书旗免费小说', '', '7.2.2', 1373702116, '2.99MB', 'Android 2.1.x以上 ', '免费', 'http://img01.appcms.cc/20130707/t019/t019716b2c3b4c6f5e0.png', '\r\n											书旗免费小说使用非常便捷，海量书籍想看就看，连载书籍闪电更新，看书吐槽人气爆棚，深受广大书友追捧，还不快来下载使用！<br/>【更新内容】<br/>1、优化私信，更加人性化；<br />\r\n2、优化登陆页；<br />\r\n3、优化找回密码页；<br />\r\n4、优化密码修改页；<br />\r\n5、修复部分书友反馈bug。										', '北京无限新空信息技术有限公司', '', '', 1373702116, 0, 7.6, 0, '', 0, 0, 13050419, 0, 50930, 0, '');
INSERT ignore INTO `appcms_app_list` VALUES (17, 6, '爱奇艺视频', '', '4.5.2', 1373702117, '8.76MB', 'Android 1.6以上 ', '免费', 'http://img01.appcms.cc/20130707/t019/t019e47c858f45bd849.png', '\r\n											爱奇艺（qiyi）视频客户端是爱奇艺（iQIYI.com）旗下一款高清视频客户端，可提供电影、动漫、音乐、新闻、娱乐、片花高清海量影视视频在线观看和下载海量正版高清影视资源，可供用户飞速离线观看。汇集优酷、土豆、PPS、搜狐、乐视、PPTV等视频网站优势资源于一身，多终端播放记录同步功能，畅想随时随地观影。热播大剧、最新剧集，八卦娱乐，爱奇艺在手，应有尽有！快来下载试用吧！温馨提醒：是爱奇艺，而非“爱奇异”哦！<br />\n会员VIP大放送，火速下载<br/>【更新内容】<br/>1、支持P2P播放，不要卡顿，播放就是这么流畅；<br />\r\n2、院线最新最热的大片精彩上线，VIP会员不限量尽情独享；<br />\r\n3、支持全网搜索，所有视频网站精彩内容一网打尽，应有尽有；<br />\r\n4、精心推荐的精彩短视频，连播各种口味的精彩内容，总有你喜欢的；<br />\r\n5、优化之前版本出现的问题，更加稳定易操作，提升您的使用体验。										', '北京爱奇艺科技有限公司', '', '', 1373702117, 0, 5.9, 0, '', 0, 0, 25727514, 0, 47619, 0, '');
INSERT ignore INTO `appcms_app_list` VALUES (18, 6, 'Camera360', '', '4.5', 1373702118, '9.92MB', 'Android 2.2.x以上 ', '免费', 'http://img01.appcms.cc/20130707/t013/t013d7d3642e4f37c77.png', '\r\n											Camera360【相机360】，超过1亿用户使用的手机摄影软件。<br />\nCamera360【相机360】，可以让你替代单反相机，省去学习复杂的PS教程，“傻瓜”式的拍摄和美图滤镜效果，瞬间让你的照片华丽起来。Camera360让你玩转旅行拍照、个性自拍、图片美化编辑、同时还一键支持社交分享，是你手机必备应用。<br />\n【功能亮点】<br />\n1、七大摄影模式<br />\n特效、美肤自拍、快速拍照（无特效）、趣味、移轴、移色、留声相机提供更为便捷的拍照。<br />\n2、丰富的特效滤镜<br />\n强大的第三代处理引擎打造更为细腻的特效滤镜，让你体验前所未有的摄影。<br />\n3、拼图<br />\n备受用户喜爱的模板拼图和图片拼接，轻轻松松拼出好心情。<br />\n4、有趣的情景模板<br />\n更多精彩模板给你带来更加有趣的拍摄体验，充分满足你那颗好奇的心。<br />\n5、全新云相册<br />\n安全备份，永不丢失（可支持高达2000万像素照片上传）。<br />\n6、多站点、个性化分享<br />\n可一键分享至微博，QQ空间，人人、微信等。同时提供丰富有趣的分享模板，打造个性分享照片。<br/>【更新内容】<br/>1、新增留声相机模式，记录环境音，让照片“有声有色”。										', '成都品果科技有限公司', '', '', 1373702118, 0, 5.7, 0, '', 0, 0, 12006160, 0, 47496, 0, '');
INSERT ignore INTO `appcms_app_list` VALUES (19, 12, '流行之星', '', '2.0.3', 1373702119, '2.73MB', 'Android 2.2.x以上 ', '免费', 'http://img01.appcms.cc/20130707/t018/t018ac9fa2353eb728e.png', '\r\n											pop star是一款移植自IOS平台的消消看游戏一旦你开始玩就不会再放手!<br />\nPop Star是一个很锻炼脑力的游戏。<br />\n点击两个或更多相同的星星可以消除它们。<br />\n玩法:<br />\n1.点击两个或更多相同的星星<br />\n2.没有时间限制但是每一关有目标分<br />\n提示:<br />\n1.你同时消去的星星越多就能得到越高分<br />\n2.最后剩下的星星越少得到的奖励越多<br />\n3.你需要经过仔细思考才能得到更高的分数										', 'POPDADDY GAMES', '', '', 1373702119, 0, 7.3, 0, '', 0, 0, 12064186, 0, 47478, 0, '');

/*应用历史版本列表*/
INSERT ignore INTO `appcms_app_history` VALUES (1, 1, '4.5.1', 1372863153, '18.61MB', 'Android 2.1.x以上 ', 23877, '');
INSERT ignore INTO `appcms_app_history` VALUES (2, 2, '4.1.0', 1372854185, '10.68MB', 'Android 2.2.x以上 ', 2447, '');
INSERT ignore INTO `appcms_app_history` VALUES (3, 3, '1.1.0', 1372925733, '32.4MB', 'Android 2.2.x以上', 137688, '');
INSERT ignore INTO `appcms_app_history` VALUES (4, 4, '4.2.0', 1372923417, '59.27MB', 'Android 2.2.x以上', 129476, '');
INSERT ignore INTO `appcms_app_history` VALUES (5, 5, '1.1.4-0002', 1372922219, '27.45MB', 'Android 2.1.x以上', 124036, '');
INSERT ignore INTO `appcms_app_history` VALUES (6, 6, '1.6.0', 1372912222, '3.92MB', 'Android 2.0以上 ', 91149, '');
INSERT ignore INTO `appcms_app_history` VALUES (7, 7, '1.12.0', 1372911180, '48.77MB', 'Android 2.1.x以上 ', 88625, '');
INSERT ignore INTO `appcms_app_history` VALUES (8, 8, '4.0.0', 1372907717, '8.07MB', 'Android 2.2.x以上 ', 80353, '');
INSERT ignore INTO `appcms_app_history` VALUES (9, 9, '1.1.3', 1372906481, '35.95MB', 'Android 2.2.x以上 ', 77649, '');
INSERT ignore INTO `appcms_app_history` VALUES (10, 10, '1.4.1', 1372902878, '25.04MB', 'Android 2.2.x以上 ', 70094, '');
INSERT ignore INTO `appcms_app_history` VALUES (11, 11, '1.9.96', 1372897527, '3.27MB', 'Android 2.1.x以上 ', 54769, '');
INSERT ignore INTO `appcms_app_history` VALUES (12, 12, '4.2.0', 1372869422, '24.3MB', 'Android 2.1.x以上 ', 52031, '');
INSERT ignore INTO `appcms_app_history` VALUES (13, 13, '2.9.0.2', 1372869354, '27.81MB', 'Android 2.2.x以上 ', 51726, '');
INSERT ignore INTO `appcms_app_history` VALUES (14, 14, '7.1.0.0701', 1372869206, '7.04MB', 'Android 2.2.x以上 ', 51061, '');
INSERT ignore INTO `appcms_app_history` VALUES (15, 15, '4.0.3', 1372869182, '21.01MB', 'Android 2.2.x以上 ', 50953, '');
INSERT ignore INTO `appcms_app_history` VALUES (16, 16, '7.2.2', 1372869176, '2.99MB', 'Android 2.1.x以上 ', 50930, '');
INSERT ignore INTO `appcms_app_history` VALUES (17, 17, '4.5.2', 1372868453, '8.76MB', 'Android 1.6以上 ', 47619, '');
INSERT ignore INTO `appcms_app_history` VALUES (18, 18, '4.5', 1372868426, '9.92MB', 'Android 2.2.x以上 ', 47496, '');
INSERT ignore INTO `appcms_app_history` VALUES (19, 19, '2.0.3', 1372868422, '2.73MB', 'Android 2.2.x以上 ', 47478, '');

/*资讯列表*/
INSERT ignore INTO `appcms_info_list` VALUES (1, 19, '4.3英寸双核 三星GALAXY S4 mini正式发布', '4.3英寸双核 三星GALAXY S4 mini正式发布', '', '', '<P>此前一直有消息称GALAXY S4 mini将会在本月底发布，而随着五月即将过去，我们却一直未看到该机的亮相。就在人们都认为该机将推迟至6月20日的三星发布会亮相时，三星公司终于在 五月的最后一天正式发布了GALAXY S4 mini。按照三星方面的安排，GALAXY S4 mini将会在今年七月中旬正式上市发售。<BR></P>\r\n<P style=\"TEXT-ALIGN: center\"><IMG class=picborder title=点击新窗口打开 border=0 alt=\"\" src=\"http://imga.mumayi.com/allimg/130531/1649162U0-0.jpg\" width=600 data-cke-saved-src=\"http://imga.mumayi.com/allimg/130531/1649162U0-0.jpg\"><BR></P>\r\n<P>三星GALAXY S4 mini采用4.3英寸Super AMOLED触控屏，分辨率为qHD级别，并支持Adapt Display动态色彩调整功能。搭载主频为1.7GHz的高通骁龙400双核处理器，集成Adreno 305 GPU，配有1.5GB RAM内存和8GB ROM空间。此外，该机还支持最大64GB的micro-SD存储卡扩展，并拥有1900mAh容量的电池。</P>\r\n<P style=\"TEXT-ALIGN: center\"><IMG class=picborder title=点击新窗口打开 border=0 alt=\"\" src=\"http://imgb.mumayi.com/allimg/130531/16491C095-1.jpg\" width=600 data-cke-saved-src=\"http://imgb.mumayi.com/allimg/130531/16491C095-1.jpg\"></P>\r\n<P>在摄像头组件上，三星为GALAXY S4 mini选择了双摄像头配置，拥有190万像素前置镜头和800万像素主镜头，支持1080p高清视频拍摄。GALAXY S4 mini还为消费者准备了丰富的拍照功能，包括可录制声音的Sound&amp; Shot、HDR拍照、最佳脸部表情、全景拍摄与连拍等等，但在GALAXY S4上备受好评的前后摄像头同时拍照功能似乎并没有出现在GALAXY S4 mini上。</P>\r\n<P style=\"TEXT-ALIGN: center\"><IMG class=picborder title=点击新窗口打开 border=0 alt=\"\" src=\"http://imga.mumayi.com/allimg/130531/16491CL5-2.jpg\" data-cke-saved-src=\"http://imga.mumayi.com/allimg/130531/16491CL5-2.jpg\"></P>\r\n<P>该机运行Android4.2.2系统，并支持Wi-Fi连接、GPS GLONASS双星定位、蓝牙4.0技术，红外接口。为体现GALAXY S4拓展版本的身份，该机还加入了不少S4上的功能，包括Story Album、Group Play、WatchOn红外遥控、S Health健身程序、S Travel、S Translator等等，但取消了Smart Pause、Smart Scroll等体感功能。</P>\r\n<P style=\"TEXT-ALIGN: center\"><IMG class=picborder title=点击新窗口打开 border=0 alt=\"\" src=\"http://imga.mumayi.com/allimg/130531/1649163V2-3.jpg\" data-cke-saved-src=\"http://imga.mumayi.com/allimg/130531/1649163V2-3.jpg\"></P>\r\n<P>三星GALAXY S4 mini共拥有三个版本，分别是4G LTE、3G HSPA 以及3G双卡版，遗憾的是，这三个版本中只有4G LTE版支持NFC近场通信功能。按照三星方面的安排，该机将于下月20日的Samsung Premiere 2013”伦敦发布会上展示，并将于今年7月中旬正式上市发售，届时将拥有霜白和雾黑两种色彩款式供消费者选择。<BR></P>', '三星，双核，GALAXY S4 mini', 1373702651, 1373702513, '', 1, 'admin', 0, 0, 0, '');

/*分类关系数据*/
INSERT ignore INTO `appcms_cate_relation` VALUES (1, 1, 0, 1, 111551609, 5, 1373702101, 1373702101, 0);
INSERT ignore INTO `appcms_cate_relation` VALUES (2, 4, 0, 1, 111551609, 5, 1373702101, 1373702101, 0);
INSERT ignore INTO `appcms_cate_relation` VALUES (3, 1, 0, 2, 159930295, 5, 1373702102, 1373702102, 0);
INSERT ignore INTO `appcms_cate_relation` VALUES (4, 3, 0, 2, 159930295, 5, 1373702102, 1373702102, 0);
INSERT ignore INTO `appcms_cate_relation` VALUES (5, 2, 0, 3, 32030860, 4, 1373702103, 1373702103, 0);
INSERT ignore INTO `appcms_cate_relation` VALUES (6, 17, 0, 3, 32030860, 4, 1373702103, 1373702103, 0);
INSERT ignore INTO `appcms_cate_relation` VALUES (7, 2, 0, 4, 30378634, 4, 1373702104, 1373702104, 0);
INSERT ignore INTO `appcms_cate_relation` VALUES (8, 12, 0, 4, 30378634, 4, 1373702104, 1373702104, 0);
INSERT ignore INTO `appcms_cate_relation` VALUES (9, 2, 0, 5, 47799422, 4, 1373702105, 1373702105, 0);
INSERT ignore INTO `appcms_cate_relation` VALUES (10, 13, 0, 5, 47799422, 4, 1373702105, 1373702105, 0);
INSERT ignore INTO `appcms_cate_relation` VALUES (11, 1, 0, 6, 10128890, 4, 1373702106, 1373702106, 0);
INSERT ignore INTO `appcms_cate_relation` VALUES (12, 4, 0, 6, 10128890, 4, 1373702106, 1373702106, 0);
INSERT ignore INTO `appcms_cate_relation` VALUES (13, 2, 0, 7, 25277829, 4, 1373702107, 1373702107, 0);
INSERT ignore INTO `appcms_cate_relation` VALUES (14, 12, 0, 7, 25277829, 4, 1373702107, 1373702107, 0);
INSERT ignore INTO `appcms_cate_relation` VALUES (15, 1, 0, 8, 19504782, 4, 1373702108, 1373702108, 0);
INSERT ignore INTO `appcms_cate_relation` VALUES (16, 6, 0, 8, 19504782, 4, 1373702108, 1373702108, 0);
INSERT ignore INTO `appcms_cate_relation` VALUES (17, 2, 0, 9, 39189622, 4, 1373702109, 1373702109, 0);
INSERT ignore INTO `appcms_cate_relation` VALUES (18, 12, 0, 9, 39189622, 4, 1373702109, 1373702109, 0);
INSERT ignore INTO `appcms_cate_relation` VALUES (19, 2, 0, 10, 24467067, 4, 1373702110, 1373702110, 0);
INSERT ignore INTO `appcms_cate_relation` VALUES (20, 15, 0, 10, 24467067, 4, 1373702110, 1373702110, 0);
INSERT ignore INTO `appcms_cate_relation` VALUES (21, 1, 0, 11, 20516381, 4, 1373702111, 1373702111, 0);
INSERT ignore INTO `appcms_cate_relation` VALUES (22, 3, 0, 11, 20516381, 4, 1373702111, 1373702111, 0);
INSERT ignore INTO `appcms_cate_relation` VALUES (23, 1, 0, 12, 93093558, 4, 1373702112, 1373702112, 0);
INSERT ignore INTO `appcms_cate_relation` VALUES (24, 4, 0, 12, 93093558, 4, 1373702112, 1373702112, 0);
INSERT ignore INTO `appcms_cate_relation` VALUES (25, 1, 0, 13, 35140435, 4, 1373702113, 1373702113, 0);
INSERT ignore INTO `appcms_cate_relation` VALUES (26, 6, 0, 13, 35140435, 4, 1373702113, 1373702113, 0);
INSERT ignore INTO `appcms_cate_relation` VALUES (27, 1, 0, 14, 14423465, 4, 1373702114, 1373702114, 0);
INSERT ignore INTO `appcms_cate_relation` VALUES (28, 8, 0, 14, 14423465, 4, 1373702114, 1373702114, 0);
INSERT ignore INTO `appcms_cate_relation` VALUES (29, 1, 0, 15, 23751513, 4, 1373702115, 1373702115, 0);
INSERT ignore INTO `appcms_cate_relation` VALUES (30, 7, 0, 15, 23751513, 4, 1373702115, 1373702115, 0);
INSERT ignore INTO `appcms_cate_relation` VALUES (31, 1, 0, 16, 13050419, 4, 1373702116, 1373702116, 0);
INSERT ignore INTO `appcms_cate_relation` VALUES (32, 7, 0, 16, 13050419, 4, 1373702116, 1373702116, 0);
INSERT ignore INTO `appcms_cate_relation` VALUES (33, 1, 0, 17, 25727514, 4, 1373702117, 1373702117, 0);
INSERT ignore INTO `appcms_cate_relation` VALUES (34, 6, 0, 17, 25727514, 4, 1373702117, 1373702117, 0);
INSERT ignore INTO `appcms_cate_relation` VALUES (35, 1, 0, 18, 12006160, 4, 1373702118, 1373702118, 0);
INSERT ignore INTO `appcms_cate_relation` VALUES (36, 6, 0, 18, 12006160, 4, 1373702118, 1373702118, 0);
INSERT ignore INTO `appcms_cate_relation` VALUES (37, 2, 0, 19, 12064186, 4, 1373702119, 1373702119, 0);
INSERT ignore INTO `appcms_cate_relation` VALUES (38, 12, 0, 19, 12064186, 4, 1373702119, 1373702119, 0);
INSERT ignore INTO `appcms_cate_relation` VALUES (39, 19, 1, 1, 0, 0, 1373702651, 1373702513, 0);

/*资源列表*/
INSERT ignore INTO `appcms_resource_list` VALUES (1, 1, 0, 'http://img01.appcms.cc/20130707/t01e/t01ed9e3a5dada1ca8c.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (2, 1, 0, 'http://img01.appcms.cc/20130707/t014/t014805a90b3cb6c294.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (3, 1, 0, 'http://img01.appcms.cc/20130707/t011/t01180d35c792ae0fb9.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (4, 1, 0, 'http://img01.appcms.cc/20130707/t010/t0109cb0dd11e596137.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (5, 2, 0, 'http://img01.appcms.cc/20130707/t01c/t01c7db269e9e92dd5b.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (6, 2, 0, 'http://img01.appcms.cc/20130707/t013/t013eab09c200236b59.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (7, 2, 0, 'http://img01.appcms.cc/20130707/t01c/t01c3e574bbc2ef1293.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (8, 2, 0, 'http://img01.appcms.cc/20130707/t018/t018d9b43e4953adc76.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (9, 2, 0, 'http://img01.appcms.cc/20130707/t012/t012bda2a3bca5b5aea.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (10, 3, 0, 'http://img01.appcms.cc/20130707/t013/t013cedb3189f56acb3.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (11, 3, 0, 'http://img01.appcms.cc/20130707/t012/t01223e3705f8184013.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (12, 3, 0, 'http://img01.appcms.cc/20130707/t015/t015fbd94f4df34cb5a.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (13, 3, 0, 'http://img01.appcms.cc/20130707/t019/t019639bb8b6872b082.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (14, 3, 0, 'http://img01.appcms.cc/20130707/t012/t0120b3a17e4cfcd559.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (15, 4, 0, 'http://img01.appcms.cc/20130708/t015/t015d632958fbc814e1.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (16, 4, 0, 'http://img01.appcms.cc/20130708/t01a/t01a0e6c1f9a4b264b5.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (17, 4, 0, 'http://img01.appcms.cc/20130708/t012/t012a01494230cdccab.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (18, 4, 0, 'http://img01.appcms.cc/20130708/t01b/t01bb245f68b9894920.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (19, 5, 0, 'http://img01.appcms.cc/20130708/t013/t01344a463a1ff19aa5.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (20, 5, 0, 'http://img01.appcms.cc/20130708/t01f/t01f8b9c4ea4bb69402.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (21, 5, 0, 'http://img01.appcms.cc/20130708/t013/t01373c7af65f2d2b0b.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (22, 5, 0, 'http://img01.appcms.cc/20130708/t01c/t01cbc52e481fd5ab70.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (23, 5, 0, 'http://img01.appcms.cc/20130708/t010/t010bf993b205ab20ef.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (24, 6, 0, 'http://img01.appcms.cc/20130708/t012/t0125d828a98bfcc983.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (25, 6, 0, 'http://img01.appcms.cc/20130708/t01e/t01e18e56a171efb5dd.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (26, 6, 0, 'http://img01.appcms.cc/20130708/t013/t01322859b51c398a63.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (27, 6, 0, 'http://img01.appcms.cc/20130708/t01f/t01fa2bc59eebfa49ef.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (28, 6, 0, 'http://img01.appcms.cc/20130708/t017/t01743d91ae4f6953d8.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (29, 7, 0, 'http://img01.appcms.cc/20130708/t016/t01630627e76b3f5d98.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (30, 7, 0, 'http://img01.appcms.cc/20130708/t017/t017ed87094c430d1d8.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (31, 7, 0, 'http://img01.appcms.cc/20130708/t013/t0136c3adbf1227ed92.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (32, 7, 0, 'http://img01.appcms.cc/20130708/t015/t0155e257b2b57eb37d.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (33, 8, 0, 'http://img01.appcms.cc/20130708/t01f/t01fdf571d73f191150.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (34, 8, 0, 'http://img01.appcms.cc/20130708/t01a/t01aa6a34611b6fd176.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (35, 8, 0, 'http://img01.appcms.cc/20130708/t011/t01109c98538c6d031e.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (36, 8, 0, 'http://img01.appcms.cc/20130708/t013/t01374f7933dfd8dec0.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (37, 8, 0, 'http://img01.appcms.cc/20130708/t015/t015c09da8baabda40f.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (38, 9, 0, 'http://img01.appcms.cc/20130708/t012/t01279a2a3f55d55b46.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (39, 9, 0, 'http://img01.appcms.cc/20130708/t01d/t01d7e8e97616957c14.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (40, 9, 0, 'http://img01.appcms.cc/20130708/t011/t0114b557bac79aa858.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (41, 9, 0, 'http://img01.appcms.cc/20130708/t019/t019a4658011e6abfdc.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (42, 9, 0, 'http://img01.appcms.cc/20130708/t016/t01671745c32a99c8a3.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (43, 10, 0, 'http://img01.appcms.cc/20130708/t01f/t01f45a8ce9561d7c8f.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (44, 10, 0, 'http://img01.appcms.cc/20130708/t017/t017a0a54b050366209.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (45, 10, 0, 'http://img01.appcms.cc/20130708/t01b/t01bbea269871fa961c.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (46, 10, 0, 'http://img01.appcms.cc/20130708/t01d/t01d413cee8eea30a9a.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (47, 11, 0, 'http://img01.appcms.cc/20130707/t011/t0114d58d0f0fc868d3.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (48, 11, 0, 'http://img01.appcms.cc/20130707/t018/t018263c671b1510fd0.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (49, 11, 0, 'http://img01.appcms.cc/20130707/t01b/t01babb7f2985583ca9.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (50, 12, 0, 'http://img01.appcms.cc/20130707/t011/t0116fa155cd4cec31b.png', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (51, 12, 0, 'http://img01.appcms.cc/20130707/t01f/t01f3023662e2e0936a.png', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (52, 12, 0, 'http://img01.appcms.cc/20130707/t012/t012745579027ac250d.png', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (53, 12, 0, 'http://img01.appcms.cc/20130707/t01a/t01ac069544bbb3d087.png', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (54, 12, 0, 'http://img01.appcms.cc/20130707/t013/t013f6349eac1f27805.png', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (55, 13, 0, 'http://img01.appcms.cc/20130707/t019/t0195754401402cc3f3.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (56, 13, 0, 'http://img01.appcms.cc/20130707/t01e/t01ecf32601d07ae813.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (57, 13, 0, 'http://img01.appcms.cc/20130707/t012/t0123a11c8ffababfe3.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (58, 13, 0, 'http://img01.appcms.cc/20130707/t016/t01609966bb809e5611.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (59, 13, 0, 'http://img01.appcms.cc/20130707/t018/t0180f3b1c5bc6bd1f5.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (60, 14, 0, 'http://img01.appcms.cc/20130707/t01f/t01f7bb28f6b3807725.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (61, 14, 0, 'http://img01.appcms.cc/20130707/t016/t0162a4de3adfc1dc58.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (62, 14, 0, 'http://img01.appcms.cc/20130707/t014/t014b26837b86aa9e1b.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (63, 14, 0, 'http://img01.appcms.cc/20130707/t012/t012f753e5dd10313ac.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (64, 14, 0, 'http://img01.appcms.cc/20130707/t016/t0168461f20c6878a00.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (65, 15, 0, 'http://img01.appcms.cc/20130707/t01b/t01b0ea3c4483046ed1.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (66, 15, 0, 'http://img01.appcms.cc/20130707/t01b/t01b9dba7ac74abdc37.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (67, 15, 0, 'http://img01.appcms.cc/20130707/t016/t0169b2884a0ffbceee.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (68, 15, 0, 'http://img01.appcms.cc/20130707/t016/t01632ef5ebcf11cf05.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (69, 15, 0, 'http://img01.appcms.cc/20130707/t019/t019461dd8d9de77276.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (70, 16, 0, 'http://img01.appcms.cc/20130707/t016/t0166a21c2bf1cb0bc4.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (71, 16, 0, 'http://img01.appcms.cc/20130707/t012/t012a9f63cc6986ae25.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (72, 16, 0, 'http://img01.appcms.cc/20130707/t016/t0167cd8ef3bf61429a.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (73, 16, 0, 'http://img01.appcms.cc/20130707/t01f/t01f3a319e5443f9a9f.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (74, 16, 0, 'http://img01.appcms.cc/20130707/t01f/t01f42fab668f37144c.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (75, 17, 0, 'http://img01.appcms.cc/20130707/t01f/t01f46169a4616d3a67.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (76, 17, 0, 'http://img01.appcms.cc/20130707/t014/t014c38ae4c19b5af83.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (77, 17, 0, 'http://img01.appcms.cc/20130707/t016/t016dbabc974313af1f.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (78, 17, 0, 'http://img01.appcms.cc/20130707/t014/t014c7c81e9d626d0f9.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (79, 17, 0, 'http://img01.appcms.cc/20130707/t01b/t01b1e3f868d9736082.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (80, 18, 0, 'http://img01.appcms.cc/20130707/t016/t0166d84e945f59059c.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (81, 18, 0, 'http://img01.appcms.cc/20130707/t010/t010de833ff43272d67.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (82, 18, 0, 'http://img01.appcms.cc/20130707/t016/t016654019efb2adae5.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (83, 19, 0, 'http://img01.appcms.cc/20130707/t010/t0103b6993f9ea78a6c.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (84, 19, 0, 'http://img01.appcms.cc/20130707/t01c/t01c27fe163dc9c074e.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (85, 19, 0, 'http://img01.appcms.cc/20130707/t010/t01080917816e4a38a9.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (86, 19, 0, 'http://img01.appcms.cc/20130707/t012/t012b69df70406b46f2.jpg', 0, 0, 0);
INSERT ignore INTO `appcms_resource_list` VALUES (87, 19, 0, 'http://img01.appcms.cc/20130707/t018/t018bd2e16957d939ad.jpg', 0, 0, 0);
