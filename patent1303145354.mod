<?php
if(!defined('InEmpireCMS'))
{
	exit();
}
?><?php
$empire->query(str_replace("m_phome_ecms_patent",$dbtbpre."ecms_".$tbname,SetCreateTable("CREATE TABLE `m_phome_ecms_patent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `onclick` int(11) NOT NULL DEFAULT '0',
  `newspath` char(20) NOT NULL DEFAULT '',
  `keyboard` char(160) NOT NULL DEFAULT '',
  `keyid` char(255) NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL DEFAULT '0',
  `username` char(30) NOT NULL DEFAULT '',
  `ztid` char(255) NOT NULL DEFAULT '',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `userfen` smallint(6) NOT NULL DEFAULT '0',
  `isgood` tinyint(1) NOT NULL DEFAULT '0',
  `titlefont` char(20) NOT NULL DEFAULT '',
  `titleurl` char(200) NOT NULL DEFAULT '',
  `filename` char(60) NOT NULL DEFAULT '',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `newstempid` smallint(6) NOT NULL DEFAULT '0',
  `plnum` int(11) NOT NULL DEFAULT '0',
  `firsttitle` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `totaldown` int(11) NOT NULL DEFAULT '0',
  `title` char(200) NOT NULL DEFAULT '',
  `newstime` int(10) NOT NULL DEFAULT '0',
  `titlepic` char(200) NOT NULL DEFAULT '',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `lastdotime` int(10) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infopfen` int(11) NOT NULL DEFAULT '0',
  `infopfennum` int(11) NOT NULL DEFAULT '0',
  `votenum` int(11) NOT NULL DEFAULT '0',
  `stb` char(4) NOT NULL DEFAULT '1',
  `copyids` char(255) NOT NULL DEFAULT '',
  `ttid` smallint(6) NOT NULL DEFAULT '0',
  `infotags` char(160) NOT NULL DEFAULT '',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `application_number` varchar(30) NOT NULL DEFAULT '',
  `tech_name` varchar(255) NOT NULL DEFAULT '',
  `patent_type` varchar(255) NOT NULL DEFAULT '',
  `business_type` varchar(255) NOT NULL DEFAULT '',
  `problem_solved` varchar(255) NOT NULL DEFAULT '',
  `patent_solution` mediumtext NOT NULL,
  `patent_usage_field` varchar(60) NOT NULL DEFAULT '',
  `patent_pic1` varchar(255) NOT NULL DEFAULT '',
  `patent_pic2` varchar(255) NOT NULL DEFAULT '',
  `type_number` char(60) NOT NULL DEFAULT '',
  `patent_pdf` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `checked` (`checked`),
  KEY `newstime` (`newstime`),
  KEY `truetime` (`truetime`),
  KEY `classid` (`classid`),
  KEY `ttid` (`ttid`),
  KEY `application_number` (`application_number`)
) TYPE=MyISAM",$phome_db_dbchar)));

$empire->query(str_replace("m_phome_ecms_patent_data_1",$dbtbpre."ecms_".$tbname."_data_1",SetCreateTable("CREATE TABLE `m_phome_ecms_patent_data_1` (
  `id` int(11) NOT NULL DEFAULT '0',
  `classid` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) TYPE=MyISAM",$phome_db_dbchar)));

$empire->query(str_replace("m_phome_ecms_patent_doc",$dbtbpre."ecms_".$tbname."_doc",SetCreateTable("CREATE TABLE `m_phome_ecms_patent_doc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classid` smallint(6) NOT NULL DEFAULT '0',
  `onclick` int(11) NOT NULL DEFAULT '0',
  `newspath` char(20) NOT NULL DEFAULT '',
  `keyboard` char(160) NOT NULL DEFAULT '',
  `keyid` char(255) NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL DEFAULT '0',
  `username` char(30) NOT NULL DEFAULT '',
  `ztid` char(255) NOT NULL DEFAULT '',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `truetime` int(10) NOT NULL DEFAULT '0',
  `ismember` tinyint(1) NOT NULL DEFAULT '0',
  `dokey` tinyint(1) NOT NULL DEFAULT '0',
  `userfen` smallint(6) NOT NULL DEFAULT '0',
  `isgood` tinyint(1) NOT NULL DEFAULT '0',
  `titlefont` char(20) NOT NULL DEFAULT '',
  `titleurl` char(200) NOT NULL DEFAULT '',
  `filename` char(60) NOT NULL DEFAULT '',
  `groupid` smallint(6) NOT NULL DEFAULT '0',
  `newstempid` smallint(6) NOT NULL DEFAULT '0',
  `plnum` int(11) NOT NULL DEFAULT '0',
  `firsttitle` tinyint(1) NOT NULL DEFAULT '0',
  `isqf` tinyint(1) NOT NULL DEFAULT '0',
  `totaldown` int(11) NOT NULL DEFAULT '0',
  `title` char(200) NOT NULL DEFAULT '',
  `newstime` int(10) NOT NULL DEFAULT '0',
  `titlepic` char(200) NOT NULL DEFAULT '',
  `closepl` tinyint(1) NOT NULL DEFAULT '0',
  `havehtml` tinyint(1) NOT NULL DEFAULT '0',
  `lastdotime` int(10) NOT NULL DEFAULT '0',
  `haveaddfen` tinyint(1) NOT NULL DEFAULT '0',
  `infopfen` int(11) NOT NULL DEFAULT '0',
  `infopfennum` int(11) NOT NULL DEFAULT '0',
  `votenum` int(11) NOT NULL DEFAULT '0',
  `stb` char(4) NOT NULL DEFAULT '1',
  `copyids` char(255) NOT NULL DEFAULT '',
  `ttid` smallint(6) NOT NULL DEFAULT '0',
  `infotags` char(160) NOT NULL DEFAULT '',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `application_number` varchar(30) NOT NULL DEFAULT '',
  `tech_name` varchar(255) NOT NULL DEFAULT '',
  `patent_type` varchar(255) NOT NULL DEFAULT '',
  `business_type` varchar(255) NOT NULL DEFAULT '',
  `problem_solved` varchar(255) NOT NULL DEFAULT '',
  `patent_solution` mediumtext NOT NULL,
  `patent_usage_field` varchar(60) NOT NULL DEFAULT '',
  `patent_pic1` varchar(255) NOT NULL DEFAULT '',
  `patent_pic2` varchar(255) NOT NULL DEFAULT '',
  `type_number` char(60) NOT NULL DEFAULT '',
  `patent_pdf` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `checked` (`checked`),
  KEY `newstime` (`newstime`),
  KEY `truetime` (`truetime`),
  KEY `classid` (`classid`),
  KEY `ttid` (`ttid`),
  KEY `application_number` (`application_number`)
) TYPE=MyISAM",$phome_db_dbchar)));

$empire->query(str_replace("m_phome_ecms_patent_doc_data",$dbtbpre."ecms_".$tbname."_doc_data",SetCreateTable("CREATE TABLE `m_phome_ecms_patent_doc_data` (
  `id` int(11) NOT NULL DEFAULT '0',
  `classid` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) TYPE=MyISAM",$phome_db_dbchar)));

$empire->query(str_replace("m_phome_ecms_infoclass_patent",$dbtbpre."ecms_infoclass_".$tbname,SetCreateTable("CREATE TABLE `m_phome_ecms_infoclass_patent` (
  `classid` int(11) NOT NULL DEFAULT '0',
  `zz_title` text NOT NULL,
  `z_title` varchar(255) NOT NULL DEFAULT '',
  `qz_title` varchar(255) NOT NULL DEFAULT '',
  `save_title` varchar(10) NOT NULL DEFAULT '',
  `zz_titlepic` text NOT NULL,
  `z_titlepic` varchar(255) NOT NULL DEFAULT '',
  `qz_titlepic` varchar(255) NOT NULL DEFAULT '',
  `save_titlepic` varchar(10) NOT NULL DEFAULT '',
  `zz_newstime` text NOT NULL,
  `z_newstime` varchar(255) NOT NULL DEFAULT '',
  `qz_newstime` varchar(255) NOT NULL DEFAULT '',
  `save_newstime` varchar(10) NOT NULL DEFAULT '',
  `zz_application_number` text NOT NULL,
  `z_application_number` varchar(255) NOT NULL,
  `qz_application_number` varchar(255) NOT NULL,
  `save_application_number` varchar(10) NOT NULL,
  `zz_tech_name` text NOT NULL,
  `z_tech_name` varchar(255) NOT NULL,
  `qz_tech_name` varchar(255) NOT NULL,
  `save_tech_name` varchar(10) NOT NULL,
  `zz_patent_type` text NOT NULL,
  `z_patent_type` varchar(255) NOT NULL,
  `qz_patent_type` varchar(255) NOT NULL,
  `save_patent_type` varchar(10) NOT NULL,
  `zz_business_type` text NOT NULL,
  `z_business_type` varchar(255) NOT NULL,
  `qz_business_type` varchar(255) NOT NULL,
  `save_business_type` varchar(10) NOT NULL,
  `zz_problem_solved` text NOT NULL,
  `z_problem_solved` varchar(255) NOT NULL,
  `qz_problem_solved` varchar(255) NOT NULL,
  `save_problem_solved` varchar(10) NOT NULL,
  `zz_patent_solution` text NOT NULL,
  `z_patent_solution` varchar(255) NOT NULL,
  `qz_patent_solution` varchar(255) NOT NULL,
  `save_patent_solution` varchar(10) NOT NULL,
  `zz_patent_usage_field` text NOT NULL,
  `z_patent_usage_field` varchar(255) NOT NULL,
  `qz_patent_usage_field` varchar(255) NOT NULL,
  `save_patent_usage_field` varchar(10) NOT NULL,
  `zz_patent_pic1` text NOT NULL,
  `z_patent_pic1` varchar(255) NOT NULL,
  `qz_patent_pic1` varchar(255) NOT NULL,
  `save_patent_pic1` varchar(10) NOT NULL,
  `zz_patent_pic2` text NOT NULL,
  `z_patent_pic2` varchar(255) NOT NULL,
  `qz_patent_pic2` varchar(255) NOT NULL,
  `save_patent_pic2` varchar(10) NOT NULL,
  `zz_type_number` text NOT NULL,
  `z_type_number` varchar(255) NOT NULL,
  `qz_type_number` varchar(255) NOT NULL,
  `save_type_number` varchar(10) NOT NULL,
  `zz_patent_pdf` text NOT NULL,
  `z_patent_pdf` varchar(255) NOT NULL,
  `qz_patent_pdf` varchar(255) NOT NULL,
  `save_patent_pdf` varchar(10) NOT NULL,
  KEY `classid` (`classid`)
) TYPE=MyISAM",$phome_db_dbchar)));

$empire->query(str_replace("m_phome_ecms_infotmp_patent",$dbtbpre."ecms_infotmp_".$tbname,SetCreateTable("CREATE TABLE `m_phome_ecms_infotmp_patent` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `classid` int(11) NOT NULL DEFAULT '0',
  `oldurl` varchar(255) NOT NULL DEFAULT '',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `tmptime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` varchar(200) NOT NULL DEFAULT '',
  `newstime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `username` varchar(30) NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL DEFAULT '0',
  `truetime` int(11) NOT NULL DEFAULT '0',
  `keyboard` varchar(255) NOT NULL DEFAULT '',
  `titlepic` varchar(200) NOT NULL DEFAULT '',
  `application_number` varchar(30) NOT NULL DEFAULT '',
  `tech_name` varchar(255) NOT NULL DEFAULT '',
  `patent_type` varchar(255) NOT NULL DEFAULT '',
  `business_type` varchar(255) NOT NULL DEFAULT '',
  `problem_solved` varchar(255) NOT NULL DEFAULT '',
  `patent_solution` mediumtext NOT NULL,
  `patent_usage_field` varchar(60) NOT NULL DEFAULT '',
  `patent_pic1` varchar(255) NOT NULL DEFAULT '',
  `patent_pic2` varchar(255) NOT NULL DEFAULT '',
  `type_number` char(60) NOT NULL DEFAULT '',
  `patent_pdf` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) TYPE=MyISAM",$phome_db_dbchar)));

$empire->query("insert into ".$dbtbpre."enewstable(tbname,tname,tsay,isdefault,datatbs,deftb,yhid,mid) values('$tbname','专利信息数据表','',0,',1,','1',0,0);");
$tid=$empire->lastid();
$empire->query("insert into ".$dbtbpre."enewsf(f,fname,fform,fhtml,fzs,isadd,isshow,iscj,cjhtml,myorder,ftype,flen,dotemp,tid,tbname,savetxt,fvalue,iskey,tobr,dohtml,qfhtml,isonly,linkfieldval,samedata,fformsize,tbdataf,ispage,adddofun,editdofun,qadddofun,qeditdofun,linkfieldtb,linkfieldshow,editorys,issmalltext) values('title','标题','text','<table width=\\\\\"100%\\\\\" border=\\\\\"0\\\\\" cellpadding=\\\\\"0\\\\\" cellspacing=\\\\\"0\\\\\" bgcolor=\\\\\"#DBEAF5\\\\\">\r\n<tr> \r\n  <td height=\\\\\"25\\\\\" bgcolor=\\\\\"#FFFFFF\\\\\">\r\n<?=\$tts?\\\\\"<select name=\\\\''ttid\\\\''><option value=\\\\''0\\\\''>标题分类</option>\$tts</select>\\\\\":\\\\\"\\\\\"?>\r\n	<input type=text name=title value=\\\\\"<?=htmlspecialchars(stripSlashes(\$r[title]))?>\\\\\" size=\\\\\"60\\\\\"> \r\n	<input type=\\\\\"button\\\\\" name=\\\\\"button\\\\\" value=\\\\\"图文\\\\\" onclick=\\\\\"document.add.title.value=document.add.title.value+\\\\''(图文)\\\\'';\\\\\"> \r\n  </td>\r\n</tr>\r\n<tr> \r\n  <td height=\\\\\"25\\\\\" bgcolor=\\\\\"#FFFFFF\\\\\">属性: \r\n	<input name=\\\\\"titlefont[b]\\\\\" type=\\\\\"checkbox\\\\\" value=\\\\\"b\\\\\"<?=\$titlefontb?>>粗体\r\n	<input name=\\\\\"titlefont[i]\\\\\" type=\\\\\"checkbox\\\\\" value=\\\\\"i\\\\\"<?=\$titlefonti?>>斜体\r\n	<input name=\\\\\"titlefont[s]\\\\\" type=\\\\\"checkbox\\\\\" value=\\\\\"s\\\\\"<?=\$titlefonts?>>删除线\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;颜色: <input name=\\\\\"titlecolor\\\\\" type=\\\\\"text\\\\\" value=\\\\\"<?=stripSlashes(\$r[titlecolor])?>\\\\\" size=\\\\\"10\\\\\"><a onclick=\\\\\"foreColor();\\\\\"><img src=\\\\\"../data/images/color.gif\\\\\" width=\\\\\"21\\\\\" height=\\\\\"21\\\\\" align=\\\\\"absbottom\\\\\"></a>\r\n  </td>\r\n</tr>\r\n</table>','标题',0,1,1,'  <tr bgcolor=\"#FFFFFF\"> \r\n    <td height=\"22\" valign=\"top\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\"textfield\" type=\"text\" id=\"textfield\" value=\"[!--title--]\" size=\"20\">)</td>\r\n    <td><table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\">\r\n        <tr> \r\n          <td><textarea name=\"add[zz_title]\" cols=\"60\" rows=\"10\" id=\"textarea\"><?=htmlspecialchars(stripSlashes(\$r[zz_title]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\"add[z_title]\" type=\"text\" id=\"add[z_title]\" value=\"<?=stripSlashes(\$r[z_title])?>\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>',0,'CHAR','200',1,$tid,'$tbname',0,'',0,0,0,'<input name=\\\\\"title\\\\\" type=\\\\\"text\\\\\" size=\\\\\"30\\\\\" value=\\\\\"<?=DoReqValue(\$mid,\\\\''title\\\\'',stripSlashes(\$r[title]))?>\\\\\">',0,'',0,'60','0','0','','','','','','','0','0');");
$empire->query("insert into ".$dbtbpre."enewsf(f,fname,fform,fhtml,fzs,isadd,isshow,iscj,cjhtml,myorder,ftype,flen,dotemp,tid,tbname,savetxt,fvalue,iskey,tobr,dohtml,qfhtml,isonly,linkfieldval,samedata,fformsize,tbdataf,ispage,adddofun,editdofun,qadddofun,qeditdofun,linkfieldtb,linkfieldshow,editorys,issmalltext) values('special.field','特殊属性','','<table width=\\\\\"100%\\\\\" border=\\\\\"0\\\\\" cellpadding=\\\\\"0\\\\\" cellspacing=\\\\\"0\\\\\" bgcolor=\\\\\"#DBEAF5\\\\\">\r\n  <tr>\r\n    <td height=\\\\\"25\\\\\" bgcolor=\\\\\"#FFFFFF\\\\\">信息属性: \r\n      <input name=\\\\\"isgood\\\\\" type=\\\\\"checkbox\\\\\" value=\\\\\"1\\\\\"<?=\$r[isgood]?\\\\'' checked\\\\'':\\\\''\\\\''?>>推荐\r\n	  &nbsp;&nbsp; <input name=\\\\\"checked\\\\\" type=\\\\\"checkbox\\\\\" value=\\\\\"1\\\\\"<?=\$r[checked]?\\\\'' checked\\\\'':\\\\''\\\\''?>>审核\r\n	  &nbsp;&nbsp; <input name=\\\\\"firsttitle\\\\\" type=\\\\\"checkbox\\\\\" value=\\\\\"1\\\\\"<?=\$r[firsttitle]?\\\\'' checked\\\\'':\\\\''\\\\''?>>头条\r\n	</td>\r\n  </tr>\r\n  <tr> \r\n    <td height=\\\\\"25\\\\\" bgcolor=\\\\\"#FFFFFF\\\\\">关键字&nbsp;&nbsp;&nbsp;: \r\n      <input name=\\\\\"keyboard\\\\\" type=\\\\\"text\\\\\" size=\\\\\"49\\\\\" value=\\\\\"<?=stripSlashes(\$r[keyboard])?>\\\\\">\r\n      <font color=\\\\\"#666666\\\\\">(多个请用&quot;,&quot;格开)</font></td>\r\n  </tr>\r\n  <tr> \r\n    <td height=\\\\\"25\\\\\" bgcolor=\\\\\"#FFFFFF\\\\\">外部链接: \r\n      <input name=\\\\\"titleurl\\\\\" type=\\\\\"text\\\\\" value=\\\\\"<?=stripSlashes(\$r[titleurl])?>\\\\\" size=\\\\\"49\\\\\">\r\n      <font color=\\\\\"#666666\\\\\">(填写后信息连接地址将为此链接)</font></td>\r\n  </tr>\r\n</table>','特殊属性',0,1,0,'',0,'','0',0,$tid,'$tbname',0,'',0,0,0,'关键字: \r\n      <input name=\\\\\"keyboard\\\\\" type=\\\\\"text\\\\\" value=\\\\\"<?=stripSlashes(\$r[keyboard])?>\\\\\">\r\n      <font color=\\\\\"#666666\\\\\">(多个请用&quot;,&quot;格开)</font>',0,'',0,'','0','0','','','','','','','0','0');");
$empire->query("insert into ".$dbtbpre."enewsf(f,fname,fform,fhtml,fzs,isadd,isshow,iscj,cjhtml,myorder,ftype,flen,dotemp,tid,tbname,savetxt,fvalue,iskey,tobr,dohtml,qfhtml,isonly,linkfieldval,samedata,fformsize,tbdataf,ispage,adddofun,editdofun,qadddofun,qeditdofun,linkfieldtb,linkfieldshow,editorys,issmalltext) values('titlepic','标题图片','img','<input name=\\\\\"titlepic\\\\\" type=\\\\\"text\\\\\" value=\\\\\"<?=stripSlashes(\$r[titlepic])?>\\\\\" size=\\\\\"60\\\\\">\r\n<a onclick=\\\\\"window.open(\\\\''ecmseditor/FileMain.php?type=1&classid=<?=\$classid?>&filepass=<?=\$filepass?>&doing=1&field=titlepic\\\\'',\\\\''\\\\'',\\\\''width=700,height=550,scrollbars=yes\\\\'');\\\\\" title=\\\\\"选择已上传的图片\\\\\"><img src=\\\\\"../data/images/changeimg.gif\\\\\" width=\\\\\"22\\\\\" height=\\\\\"22\\\\\" border=\\\\\"0\\\\\" align=\\\\\"absbottom\\\\\"></a>','标题图片',0,1,1,'  <tr bgcolor=\"#FFFFFF\"> \r\n    <td height=\"22\" valign=\"top\"><strong>[!--enews.name--]正则：</strong><br>\r\n      ( \r\n      <input name=\"textfield\" type=\"text\" id=\"textfield\" value=\"[!--titlepic--]\" size=\"20\">\r\n      )</td>\r\n    <td><table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\">\r\n    <tr>\r\n      <td>附件前缀 \r\n        <input name=\"add[qz_titlepic]\" type=\"text\" id=\"add[qz_titlepic]\" value=\"<?=stripSlashes(\$r[qz_titlepic])?>\"> \r\n        <input name=\"add[save_titlepic]\" type=\"checkbox\" id=\"add[save_titlepic]\" value=\" checked\"<?=\$r[save_titlepic]?>>\r\n        远程保存 </td>\r\n    </tr>\r\n    <tr> \r\n      <td><textarea name=\"add[zz_titlepic]\" cols=\"60\" rows=\"10\" id=\"add[zz_titlepic]\"><?=htmlspecialchars(stripSlashes(\$r[zz_titlepic]))?></textarea></td>\r\n    </tr>\r\n    <tr> \r\n      <td><input name=\"add[z_titlepic]\" type=\"text\" id=\"titlepic5\" value=\"<?=stripSlashes(\$r[z_titlepic])?>\">\r\n        (如填写这里，这就是字段的值)</td>\r\n    </tr>\r\n  </table></td>\r\n  </tr>',0,'CHAR','200',1,$tid,'$tbname',0,'',0,0,0,'<input type=\\\\\"file\\\\\" name=\\\\\"titlepicfile\\\\\">',0,'',0,'60','0','0','','','','','','','0','0');");
$empire->query("insert into ".$dbtbpre."enewsf(f,fname,fform,fhtml,fzs,isadd,isshow,iscj,cjhtml,myorder,ftype,flen,dotemp,tid,tbname,savetxt,fvalue,iskey,tobr,dohtml,qfhtml,isonly,linkfieldval,samedata,fformsize,tbdataf,ispage,adddofun,editdofun,qadddofun,qeditdofun,linkfieldtb,linkfieldshow,editorys,issmalltext) values('newstime','发布时间','text','<input name=\\\\\"newstime\\\\\" type=\\\\\"text\\\\\" value=\\\\\"<?=\$r[newstime]?>\\\\\"><input type=button name=button value=\\\\\"设为当前时间\\\\\" onclick=\\\\\"document.add.newstime.value=\\\\''<?=\$todaytime?>\\\\''\\\\\">','发布时间',0,1,1,'  <tr bgcolor=\"#FFFFFF\"> \r\n    <td height=\"22\" valign=\"top\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\"textfield\" type=\"text\" id=\"textfield\" value=\"[!--newstime--]\" size=\"20\">)</td>\r\n    <td><table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\">\r\n        <tr> \r\n          <td><textarea name=\"add[zz_newstime]\" cols=\"60\" rows=\"10\" id=\"textarea\"><?=htmlspecialchars(stripSlashes(\$r[zz_newstime]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\"add[z_newstime]\" type=\"text\" id=\"add[z_newstime]\" value=\"<?=stripSlashes(\$r[z_newstime])?>\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>',0,'INT','10',1,$tid,'$tbname',0,'',0,0,0,'<input name=\\\\\"newstime\\\\\" type=\\\\\"text\\\\\" value=\\\\\"<?=\$r[newstime]?>\\\\\"><input type=button name=button value=\\\\\"设为当前时间\\\\\" onclick=\\\\\"document.add.newstime.value=\\\\''<?=\$todaytime?>\\\\''\\\\\">',0,'',0,'','0','0','','','','','','','0','0');");
$empire->query("insert into ".$dbtbpre."enewsf(f,fname,fform,fhtml,fzs,isadd,isshow,iscj,cjhtml,myorder,ftype,flen,dotemp,tid,tbname,savetxt,fvalue,iskey,tobr,dohtml,qfhtml,isonly,linkfieldval,samedata,fformsize,tbdataf,ispage,adddofun,editdofun,qadddofun,qeditdofun,linkfieldtb,linkfieldshow,editorys,issmalltext) values('application_number','申请号','text','<input name=\\\\\"application_number\\\\\" type=\\\\\"text\\\\\" id=\\\\\"application_number\\\\\" value=\\\\\"<?=\$ecmsfirstpost==1?\\\\\"\\\\\":htmlspecialchars(stripSlashes(\$r[application_number]))?>\\\\\" size=\\\\\"\\\\\">\r\n','',1,1,1,'\r\n  <tr bgcolor=\\\\\"#FFFFFF\\\\\"> \r\n    <td height=\\\\\"22\\\\\" valign=\\\\\"top\\\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\\\"textfield\\\\\" type=\\\\\"text\\\\\" id=\\\\\"textfield\\\\\" value=\\\\\"[!--application_number--]\\\\\" size=\\\\\"20\\\\\">)</td>\r\n    <td><table width=\\\\\"100%\\\\\" border=\\\\\"0\\\\\" cellspacing=\\\\\"1\\\\\" cellpadding=\\\\\"3\\\\\">\r\n        <tr> \r\n          <td><textarea name=\\\\\"add[zz_application_number]\\\\\" cols=\\\\\"60\\\\\" rows=\\\\\"10\\\\\" id=\\\\\"textarea\\\\\"><?=htmlspecialchars(stripSlashes(\$r[zz_application_number]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\\\"add[z_application_number]\\\\\" type=\\\\\"text\\\\\" id=\\\\\"add[z_application_number]\\\\\" value=\\\\\"<?=stripSlashes(\$r[z_application_number])?>\\\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',6,'VARCHAR','30',1,$tid,'$tbname',0,'',1,0,0,'<input name=\\\\\"application_number\\\\\" type=\\\\\"text\\\\\" id=\\\\\"application_number\\\\\" value=\\\\\"<?=\$ecmsfirstpost==1?\\\\\"\\\\\":DoReqValue(\$mid,\\\\''application_number\\\\'',stripSlashes(\$r[application_number]))?>\\\\\" size=\\\\\"\\\\\">\r\n',1,'',0,'','0','0','','','','','','','0','0');");
$empire->query("insert into ".$dbtbpre."enewsf(f,fname,fform,fhtml,fzs,isadd,isshow,iscj,cjhtml,myorder,ftype,flen,dotemp,tid,tbname,savetxt,fvalue,iskey,tobr,dohtml,qfhtml,isonly,linkfieldval,samedata,fformsize,tbdataf,ispage,adddofun,editdofun,qadddofun,qeditdofun,linkfieldtb,linkfieldshow,editorys,issmalltext) values('tech_name','技术名称','text','<input name=\\\\\"tech_name\\\\\" type=\\\\\"text\\\\\" id=\\\\\"tech_name\\\\\" value=\\\\\"<?=\$ecmsfirstpost==1?\\\\\"\\\\\":htmlspecialchars(stripSlashes(\$r[tech_name]))?>\\\\\" size=\\\\\"\\\\\">\r\n','',1,1,1,'\r\n  <tr bgcolor=\\\\\"#FFFFFF\\\\\"> \r\n    <td height=\\\\\"22\\\\\" valign=\\\\\"top\\\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\\\"textfield\\\\\" type=\\\\\"text\\\\\" id=\\\\\"textfield\\\\\" value=\\\\\"[!--tech_name--]\\\\\" size=\\\\\"20\\\\\">)</td>\r\n    <td><table width=\\\\\"100%\\\\\" border=\\\\\"0\\\\\" cellspacing=\\\\\"1\\\\\" cellpadding=\\\\\"3\\\\\">\r\n        <tr> \r\n          <td><textarea name=\\\\\"add[zz_tech_name]\\\\\" cols=\\\\\"60\\\\\" rows=\\\\\"10\\\\\" id=\\\\\"textarea\\\\\"><?=htmlspecialchars(stripSlashes(\$r[zz_tech_name]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\\\"add[z_tech_name]\\\\\" type=\\\\\"text\\\\\" id=\\\\\"add[z_tech_name]\\\\\" value=\\\\\"<?=stripSlashes(\$r[z_tech_name])?>\\\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',7,'VARCHAR','255',1,$tid,'$tbname',0,'',0,0,0,'<input name=\\\\\"tech_name\\\\\" type=\\\\\"text\\\\\" id=\\\\\"tech_name\\\\\" value=\\\\\"<?=\$ecmsfirstpost==1?\\\\\"\\\\\":DoReqValue(\$mid,\\\\''tech_name\\\\'',stripSlashes(\$r[tech_name]))?>\\\\\" size=\\\\\"\\\\\">\r\n',0,'',0,'','0','0','','','','','','','0','0');");
$empire->query("insert into ".$dbtbpre."enewsf(f,fname,fform,fhtml,fzs,isadd,isshow,iscj,cjhtml,myorder,ftype,flen,dotemp,tid,tbname,savetxt,fvalue,iskey,tobr,dohtml,qfhtml,isonly,linkfieldval,samedata,fformsize,tbdataf,ispage,adddofun,editdofun,qadddofun,qeditdofun,linkfieldtb,linkfieldshow,editorys,issmalltext) values('patent_type','专利类型','text','<input name=\\\\\"patent_type\\\\\" type=\\\\\"text\\\\\" id=\\\\\"patent_type\\\\\" value=\\\\\"<?=\$ecmsfirstpost==1?\\\\\"\\\\\":htmlspecialchars(stripSlashes(\$r[patent_type]))?>\\\\\" size=\\\\\"\\\\\">\r\n','',1,1,1,'\r\n  <tr bgcolor=\\\\\"#FFFFFF\\\\\"> \r\n    <td height=\\\\\"22\\\\\" valign=\\\\\"top\\\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\\\"textfield\\\\\" type=\\\\\"text\\\\\" id=\\\\\"textfield\\\\\" value=\\\\\"[!--patent_type--]\\\\\" size=\\\\\"20\\\\\">)</td>\r\n    <td><table width=\\\\\"100%\\\\\" border=\\\\\"0\\\\\" cellspacing=\\\\\"1\\\\\" cellpadding=\\\\\"3\\\\\">\r\n        <tr> \r\n          <td><textarea name=\\\\\"add[zz_patent_type]\\\\\" cols=\\\\\"60\\\\\" rows=\\\\\"10\\\\\" id=\\\\\"textarea\\\\\"><?=htmlspecialchars(stripSlashes(\$r[zz_patent_type]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\\\"add[z_patent_type]\\\\\" type=\\\\\"text\\\\\" id=\\\\\"add[z_patent_type]\\\\\" value=\\\\\"<?=stripSlashes(\$r[z_patent_type])?>\\\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',8,'VARCHAR','255',1,$tid,'$tbname',0,'',0,0,0,'<input name=\\\\\"patent_type\\\\\" type=\\\\\"text\\\\\" id=\\\\\"patent_type\\\\\" value=\\\\\"<?=\$ecmsfirstpost==1?\\\\\"\\\\\":DoReqValue(\$mid,\\\\''patent_type\\\\'',stripSlashes(\$r[patent_type]))?>\\\\\" size=\\\\\"\\\\\">\r\n',0,'',0,'','0','0','','','','','','','0','0');");
$empire->query("insert into ".$dbtbpre."enewsf(f,fname,fform,fhtml,fzs,isadd,isshow,iscj,cjhtml,myorder,ftype,flen,dotemp,tid,tbname,savetxt,fvalue,iskey,tobr,dohtml,qfhtml,isonly,linkfieldval,samedata,fformsize,tbdataf,ispage,adddofun,editdofun,qadddofun,qeditdofun,linkfieldtb,linkfieldshow,editorys,issmalltext) values('business_type','行业分类','text','<input name=\\\\\"business_type\\\\\" type=\\\\\"text\\\\\" id=\\\\\"business_type\\\\\" value=\\\\\"<?=\$ecmsfirstpost==1?\\\\\"\\\\\":htmlspecialchars(stripSlashes(\$r[business_type]))?>\\\\\" size=\\\\\"\\\\\">\r\n','',1,1,1,'\r\n  <tr bgcolor=\\\\\"#FFFFFF\\\\\"> \r\n    <td height=\\\\\"22\\\\\" valign=\\\\\"top\\\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\\\"textfield\\\\\" type=\\\\\"text\\\\\" id=\\\\\"textfield\\\\\" value=\\\\\"[!--business_type--]\\\\\" size=\\\\\"20\\\\\">)</td>\r\n    <td><table width=\\\\\"100%\\\\\" border=\\\\\"0\\\\\" cellspacing=\\\\\"1\\\\\" cellpadding=\\\\\"3\\\\\">\r\n        <tr> \r\n          <td><textarea name=\\\\\"add[zz_business_type]\\\\\" cols=\\\\\"60\\\\\" rows=\\\\\"10\\\\\" id=\\\\\"textarea\\\\\"><?=htmlspecialchars(stripSlashes(\$r[zz_business_type]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\\\"add[z_business_type]\\\\\" type=\\\\\"text\\\\\" id=\\\\\"add[z_business_type]\\\\\" value=\\\\\"<?=stripSlashes(\$r[z_business_type])?>\\\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',9,'VARCHAR','255',1,$tid,'$tbname',0,'',0,0,1,'<input name=\\\\\"business_type\\\\\" type=\\\\\"text\\\\\" id=\\\\\"business_type\\\\\" value=\\\\\"<?=\$ecmsfirstpost==1?\\\\\"\\\\\":DoReqValue(\$mid,\\\\''business_type\\\\'',stripSlashes(\$r[business_type]))?>\\\\\" size=\\\\\"\\\\\">\r\n',0,'',0,'','0','0','','','','','','','0','0');");
$empire->query("insert into ".$dbtbpre."enewsf(f,fname,fform,fhtml,fzs,isadd,isshow,iscj,cjhtml,myorder,ftype,flen,dotemp,tid,tbname,savetxt,fvalue,iskey,tobr,dohtml,qfhtml,isonly,linkfieldval,samedata,fformsize,tbdataf,ispage,adddofun,editdofun,qadddofun,qeditdofun,linkfieldtb,linkfieldshow,editorys,issmalltext) values('problem_solved','要解决的技术问题','textarea','<textarea name=\\\\\"problem_solved\\\\\" cols=\\\\\"60\\\\\" rows=\\\\\"10\\\\\" id=\\\\\"problem_solved\\\\\"><?=\$ecmsfirstpost==1?\\\\\"\\\\\":htmlspecialchars(stripSlashes(\$r[problem_solved]))?></textarea>\r\n','',1,1,1,'\r\n  <tr bgcolor=\\\\\"#FFFFFF\\\\\"> \r\n    <td height=\\\\\"22\\\\\" valign=\\\\\"top\\\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\\\"textfield\\\\\" type=\\\\\"text\\\\\" id=\\\\\"textfield\\\\\" value=\\\\\"[!--problem_solved--]\\\\\" size=\\\\\"20\\\\\">)</td>\r\n    <td><table width=\\\\\"100%\\\\\" border=\\\\\"0\\\\\" cellspacing=\\\\\"1\\\\\" cellpadding=\\\\\"3\\\\\">\r\n        <tr> \r\n          <td><textarea name=\\\\\"add[zz_problem_solved]\\\\\" cols=\\\\\"60\\\\\" rows=\\\\\"10\\\\\" id=\\\\\"textarea\\\\\"><?=htmlspecialchars(stripSlashes(\$r[zz_problem_solved]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\\\"add[z_problem_solved]\\\\\" type=\\\\\"text\\\\\" id=\\\\\"add[z_problem_solved]\\\\\" value=\\\\\"<?=stripSlashes(\$r[z_problem_solved])?>\\\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',10,'VARCHAR','255',1,$tid,'$tbname',0,'',0,0,1,'<textarea name=\\\\\"problem_solved\\\\\" cols=\\\\\"60\\\\\" rows=\\\\\"10\\\\\" id=\\\\\"problem_solved\\\\\"><?=\$ecmsfirstpost==1?\\\\\"\\\\\":DoReqValue(\$mid,\\\\''problem_solved\\\\'',stripSlashes(\$r[problem_solved]))?></textarea>\r\n',0,'',0,'','0','0','','','','','','','0','0');");
$empire->query("insert into ".$dbtbpre."enewsf(f,fname,fform,fhtml,fzs,isadd,isshow,iscj,cjhtml,myorder,ftype,flen,dotemp,tid,tbname,savetxt,fvalue,iskey,tobr,dohtml,qfhtml,isonly,linkfieldval,samedata,fformsize,tbdataf,ispage,adddofun,editdofun,qadddofun,qeditdofun,linkfieldtb,linkfieldshow,editorys,issmalltext) values('patent_solution','技术方案','textarea','\r\n<textarea name=\\\\\"patent_solution\\\\\" cols=\\\\\"60\\\\\" rows=\\\\\"10\\\\\" id=\\\\\"patent_solution\\\\\"><?=\$ecmsfirstpost==1?\\\\\"\\\\\":htmlspecialchars(stripSlashes(\$r[patent_solution]))?></textarea>\r\n','',1,1,1,'\r\n  <tr bgcolor=\\\\\"#FFFFFF\\\\\"> \r\n    <td height=\\\\\"22\\\\\" valign=\\\\\"top\\\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\\\"textfield\\\\\" type=\\\\\"text\\\\\" id=\\\\\"textfield\\\\\" value=\\\\\"[!--patent_solution--]\\\\\" size=\\\\\"20\\\\\">)</td>\r\n    <td><table width=\\\\\"100%\\\\\" border=\\\\\"0\\\\\" cellspacing=\\\\\"1\\\\\" cellpadding=\\\\\"3\\\\\">\r\n        <tr> \r\n          <td><textarea name=\\\\\"add[zz_patent_solution]\\\\\" cols=\\\\\"60\\\\\" rows=\\\\\"10\\\\\" id=\\\\\"textarea\\\\\"><?=htmlspecialchars(stripSlashes(\$r[zz_patent_solution]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\\\"add[z_patent_solution]\\\\\" type=\\\\\"text\\\\\" id=\\\\\"add[z_patent_solution]\\\\\" value=\\\\\"<?=stripSlashes(\$r[z_patent_solution])?>\\\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',11,'MEDIUMTEXT','600',1,$tid,'$tbname',0,'',0,0,1,'\r\n<textarea name=\\\\\"patent_solution\\\\\" cols=\\\\\"60\\\\\" rows=\\\\\"10\\\\\" id=\\\\\"patent_solution\\\\\"><?=\$ecmsfirstpost==1?\\\\\"\\\\\":DoReqValue(\$mid,\\\\''patent_solution\\\\'',stripSlashes(\$r[patent_solution]))?></textarea>\r\n',0,'',0,'','0','0','','','','','','','0','0');");
$empire->query("insert into ".$dbtbpre."enewsf(f,fname,fform,fhtml,fzs,isadd,isshow,iscj,cjhtml,myorder,ftype,flen,dotemp,tid,tbname,savetxt,fvalue,iskey,tobr,dohtml,qfhtml,isonly,linkfieldval,samedata,fformsize,tbdataf,ispage,adddofun,editdofun,qadddofun,qeditdofun,linkfieldtb,linkfieldshow,editorys,issmalltext) values('patent_usage_field','用途或技术领域','text','\r\n<input name=\\\\\"patent_usage_field\\\\\" type=\\\\\"text\\\\\" id=\\\\\"patent_usage_field\\\\\" value=\\\\\"<?=\$ecmsfirstpost==1?\\\\\"\\\\\":htmlspecialchars(stripSlashes(\$r[patent_usage_field]))?>\\\\\" size=\\\\\"\\\\\">\r\n','',1,1,1,'\r\n  <tr bgcolor=\\\\\"#FFFFFF\\\\\"> \r\n    <td height=\\\\\"22\\\\\" valign=\\\\\"top\\\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\\\"textfield\\\\\" type=\\\\\"text\\\\\" id=\\\\\"textfield\\\\\" value=\\\\\"[!--patent_usage_field--]\\\\\" size=\\\\\"20\\\\\">)</td>\r\n    <td><table width=\\\\\"100%\\\\\" border=\\\\\"0\\\\\" cellspacing=\\\\\"1\\\\\" cellpadding=\\\\\"3\\\\\">\r\n        <tr> \r\n          <td><textarea name=\\\\\"add[zz_patent_usage_field]\\\\\" cols=\\\\\"60\\\\\" rows=\\\\\"10\\\\\" id=\\\\\"textarea\\\\\"><?=htmlspecialchars(stripSlashes(\$r[zz_patent_usage_field]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\\\"add[z_patent_usage_field]\\\\\" type=\\\\\"text\\\\\" id=\\\\\"add[z_patent_usage_field]\\\\\" value=\\\\\"<?=stripSlashes(\$r[z_patent_usage_field])?>\\\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',12,'VARCHAR','60',1,$tid,'$tbname',0,'',0,0,1,'\r\n<input name=\\\\\"patent_usage_field\\\\\" type=\\\\\"text\\\\\" id=\\\\\"patent_usage_field\\\\\" value=\\\\\"<?=\$ecmsfirstpost==1?\\\\\"\\\\\":DoReqValue(\$mid,\\\\''patent_usage_field\\\\'',stripSlashes(\$r[patent_usage_field]))?>\\\\\" size=\\\\\"\\\\\">\r\n',0,'',0,'','0','0','','','','','','','0','0');");
$empire->query("insert into ".$dbtbpre."enewsf(f,fname,fform,fhtml,fzs,isadd,isshow,iscj,cjhtml,myorder,ftype,flen,dotemp,tid,tbname,savetxt,fvalue,iskey,tobr,dohtml,qfhtml,isonly,linkfieldval,samedata,fformsize,tbdataf,ispage,adddofun,editdofun,qadddofun,qeditdofun,linkfieldtb,linkfieldshow,editorys,issmalltext) values('patent_pic1','附图1','img','\r\n<input name=\\\\\"patent_pic1\\\\\" type=\\\\\"text\\\\\" id=\\\\\"patent_pic1\\\\\" value=\\\\\"<?=\$ecmsfirstpost==1?\\\\\"\\\\\":htmlspecialchars(stripSlashes(\$r[patent_pic1]))?>\\\\\" size=\\\\\"45\\\\\">\r\n<a onclick=\\\\\"window.open(\\\\''ecmseditor/FileMain.php?type=1&classid=<?=\$classid?>&filepass=<?=\$filepass?>&doing=1&field=patent_pic1\\\\'',\\\\''\\\\'',\\\\''width=700,height=550,scrollbars=yes\\\\'');\\\\\" title=\\\\\"选择已上传的图片\\\\\"><img src=\\\\\"../data/images/changeimg.gif\\\\\" border=\\\\\"0\\\\\" align=\\\\\"absbottom\\\\\"></a> \r\n','',1,1,1,'\r\n  <tr bgcolor=\\\\\"#FFFFFF\\\\\"> \r\n    <td height=\\\\\"22\\\\\" valign=\\\\\"top\\\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      ( \r\n      <input name=\\\\\"textfield\\\\\" type=\\\\\"text\\\\\" id=\\\\\"textfield\\\\\" value=\\\\\"[!--patent_pic1--]\\\\\" size=\\\\\"20\\\\\">\r\n      )</td>\r\n    <td><table width=\\\\\"100%\\\\\" border=\\\\\"0\\\\\" cellspacing=\\\\\"1\\\\\" cellpadding=\\\\\"3\\\\\">\r\n    <tr>\r\n      <td>附件前缀 \r\n        <input name=\\\\\"add[qz_patent_pic1]\\\\\" type=\\\\\"text\\\\\" id=\\\\\"add[qz_patent_pic1]\\\\\" value=\\\\\"<?=stripSlashes(\$r[qz_patent_pic1])?>\\\\\"> \r\n        <input name=\\\\\"add[save_patent_pic1]\\\\\" type=\\\\\"checkbox\\\\\" id=\\\\\"add[save_patent_pic1]\\\\\" value=\\\\\" checked\\\\\"<?=\$r[save_patent_pic1]?>>\r\n        远程保存 </td>\r\n    </tr>\r\n    <tr> \r\n      <td><textarea name=\\\\\"add[zz_patent_pic1]\\\\\" cols=\\\\\"60\\\\\" rows=\\\\\"10\\\\\" id=\\\\\"add[zz_patent_pic1]\\\\\"><?=htmlspecialchars(stripSlashes(\$r[zz_patent_pic1]))?></textarea></td>\r\n    </tr>\r\n    <tr> \r\n      <td><input name=\\\\\"add[z_patent_pic1]\\\\\" type=\\\\\"text\\\\\" id=\\\\\"patent_pic15\\\\\" value=\\\\\"<?=stripSlashes(\$r[z_patent_pic1])?>\\\\\">\r\n        (如填写这里，这就是字段的值)</td>\r\n    </tr>\r\n  </table></td>\r\n  </tr>\r\n',13,'VARCHAR','255',1,$tid,'$tbname',0,'',0,0,1,'\r\n<input type=\\\\\"file\\\\\" name=\\\\\"patent_pic1file\\\\\" size=\\\\\"45\\\\\">\r\n',0,'',0,'','0','0','','','','','','','0','0');");
$empire->query("insert into ".$dbtbpre."enewsf(f,fname,fform,fhtml,fzs,isadd,isshow,iscj,cjhtml,myorder,ftype,flen,dotemp,tid,tbname,savetxt,fvalue,iskey,tobr,dohtml,qfhtml,isonly,linkfieldval,samedata,fformsize,tbdataf,ispage,adddofun,editdofun,qadddofun,qeditdofun,linkfieldtb,linkfieldshow,editorys,issmalltext) values('patent_pic2','附图2','img','\r\n<input name=\\\\\"patent_pic2\\\\\" type=\\\\\"text\\\\\" id=\\\\\"patent_pic2\\\\\" value=\\\\\"<?=\$ecmsfirstpost==1?\\\\\"\\\\\":htmlspecialchars(stripSlashes(\$r[patent_pic2]))?>\\\\\" size=\\\\\"45\\\\\">\r\n<a onclick=\\\\\"window.open(\\\\''ecmseditor/FileMain.php?type=1&classid=<?=\$classid?>&filepass=<?=\$filepass?>&doing=1&field=patent_pic2\\\\'',\\\\''\\\\'',\\\\''width=700,height=550,scrollbars=yes\\\\'');\\\\\" title=\\\\\"选择已上传的图片\\\\\"><img src=\\\\\"../data/images/changeimg.gif\\\\\" border=\\\\\"0\\\\\" align=\\\\\"absbottom\\\\\"></a> \r\n','',1,1,1,'\r\n  <tr bgcolor=\\\\\"#FFFFFF\\\\\"> \r\n    <td height=\\\\\"22\\\\\" valign=\\\\\"top\\\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      ( \r\n      <input name=\\\\\"textfield\\\\\" type=\\\\\"text\\\\\" id=\\\\\"textfield\\\\\" value=\\\\\"[!--patent_pic2--]\\\\\" size=\\\\\"20\\\\\">\r\n      )</td>\r\n    <td><table width=\\\\\"100%\\\\\" border=\\\\\"0\\\\\" cellspacing=\\\\\"1\\\\\" cellpadding=\\\\\"3\\\\\">\r\n    <tr>\r\n      <td>附件前缀 \r\n        <input name=\\\\\"add[qz_patent_pic2]\\\\\" type=\\\\\"text\\\\\" id=\\\\\"add[qz_patent_pic2]\\\\\" value=\\\\\"<?=stripSlashes(\$r[qz_patent_pic2])?>\\\\\"> \r\n        <input name=\\\\\"add[save_patent_pic2]\\\\\" type=\\\\\"checkbox\\\\\" id=\\\\\"add[save_patent_pic2]\\\\\" value=\\\\\" checked\\\\\"<?=\$r[save_patent_pic2]?>>\r\n        远程保存 </td>\r\n    </tr>\r\n    <tr> \r\n      <td><textarea name=\\\\\"add[zz_patent_pic2]\\\\\" cols=\\\\\"60\\\\\" rows=\\\\\"10\\\\\" id=\\\\\"add[zz_patent_pic2]\\\\\"><?=htmlspecialchars(stripSlashes(\$r[zz_patent_pic2]))?></textarea></td>\r\n    </tr>\r\n    <tr> \r\n      <td><input name=\\\\\"add[z_patent_pic2]\\\\\" type=\\\\\"text\\\\\" id=\\\\\"patent_pic25\\\\\" value=\\\\\"<?=stripSlashes(\$r[z_patent_pic2])?>\\\\\">\r\n        (如填写这里，这就是字段的值)</td>\r\n    </tr>\r\n  </table></td>\r\n  </tr>\r\n',14,'VARCHAR','255',1,$tid,'$tbname',0,'',0,0,1,'\r\n<input type=\\\\\"file\\\\\" name=\\\\\"patent_pic2file\\\\\" size=\\\\\"45\\\\\">\r\n',0,'',0,'','0','0','','','','','','','0','0');");
$empire->query("insert into ".$dbtbpre."enewsf(f,fname,fform,fhtml,fzs,isadd,isshow,iscj,cjhtml,myorder,ftype,flen,dotemp,tid,tbname,savetxt,fvalue,iskey,tobr,dohtml,qfhtml,isonly,linkfieldval,samedata,fformsize,tbdataf,ispage,adddofun,editdofun,qadddofun,qeditdofun,linkfieldtb,linkfieldshow,editorys,issmalltext) values('type_number','分类号','text','\r\n<input name=\\\\\"type_number\\\\\" type=\\\\\"text\\\\\" id=\\\\\"type_number\\\\\" value=\\\\\"<?=\$ecmsfirstpost==1?\\\\\"\\\\\":htmlspecialchars(stripSlashes(\$r[type_number]))?>\\\\\" size=\\\\\"\\\\\">\r\n','',1,1,1,'\r\n  <tr bgcolor=\\\\\"#FFFFFF\\\\\"> \r\n    <td height=\\\\\"22\\\\\" valign=\\\\\"top\\\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\\\"textfield\\\\\" type=\\\\\"text\\\\\" id=\\\\\"textfield\\\\\" value=\\\\\"[!--type_number--]\\\\\" size=\\\\\"20\\\\\">)</td>\r\n    <td><table width=\\\\\"100%\\\\\" border=\\\\\"0\\\\\" cellspacing=\\\\\"1\\\\\" cellpadding=\\\\\"3\\\\\">\r\n        <tr> \r\n          <td><textarea name=\\\\\"add[zz_type_number]\\\\\" cols=\\\\\"60\\\\\" rows=\\\\\"10\\\\\" id=\\\\\"textarea\\\\\"><?=htmlspecialchars(stripSlashes(\$r[zz_type_number]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\\\"add[z_type_number]\\\\\" type=\\\\\"text\\\\\" id=\\\\\"add[z_type_number]\\\\\" value=\\\\\"<?=stripSlashes(\$r[z_type_number])?>\\\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',15,'CHAR','60',1,$tid,'$tbname',0,'',0,0,1,'\r\n<input name=\\\\\"type_number\\\\\" type=\\\\\"text\\\\\" id=\\\\\"type_number\\\\\" value=\\\\\"<?=\$ecmsfirstpost==1?\\\\\"\\\\\":DoReqValue(\$mid,\\\\''type_number\\\\'',stripSlashes(\$r[type_number]))?>\\\\\" size=\\\\\"\\\\\">\r\n',0,'',0,'','0','0','','','','','','','0','0');");
$empire->query("insert into ".$dbtbpre."enewsf(f,fname,fform,fhtml,fzs,isadd,isshow,iscj,cjhtml,myorder,ftype,flen,dotemp,tid,tbname,savetxt,fvalue,iskey,tobr,dohtml,qfhtml,isonly,linkfieldval,samedata,fformsize,tbdataf,ispage,adddofun,editdofun,qadddofun,qeditdofun,linkfieldtb,linkfieldshow,editorys,issmalltext) values('patent_pdf','专利pdf文本上传','file','\r\n<input name=\\\\\"patent_pdf\\\\\" type=\\\\\"text\\\\\" id=\\\\\"patent_pdf\\\\\" value=\\\\\"<?=\$ecmsfirstpost==1?\\\\\"\\\\\":htmlspecialchars(stripSlashes(\$r[patent_pdf]))?>\\\\\" size=\\\\\"45\\\\\">\r\n<a onclick=\\\\\"window.open(\\\\''ecmseditor/FileMain.php?type=0&classid=<?=\$classid?>&filepass=<?=\$filepass?>&doing=1&field=patent_pdf\\\\'',\\\\''\\\\'',\\\\''width=700,height=550,scrollbars=yes\\\\'');\\\\\" title=\\\\\"选择已上传的文件\\\\\"><img src=\\\\\"../data/images/changefile.gif\\\\\" border=\\\\\"0\\\\\" align=\\\\\"absbottom\\\\\"></a>\r\n','',1,1,1,'\r\n  <tr bgcolor=\\\\\"#FFFFFF\\\\\"> \r\n    <td height=\\\\\"22\\\\\" valign=\\\\\"top\\\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      ( \r\n      <input name=\\\\\"textfield\\\\\" type=\\\\\"text\\\\\" id=\\\\\"textfield\\\\\" value=\\\\\"[!--patent_pdf--]\\\\\" size=\\\\\"20\\\\\">\r\n      )</td>\r\n    <td><table width=\\\\\"100%\\\\\" border=\\\\\"0\\\\\" cellspacing=\\\\\"1\\\\\" cellpadding=\\\\\"3\\\\\">\r\n    <tr>\r\n      <td>附件前缀 \r\n        <input name=\\\\\"add[qz_patent_pdf]\\\\\" type=\\\\\"text\\\\\" id=\\\\\"add[qz_patent_pdf]\\\\\" value=\\\\\"<?=stripSlashes(\$r[qz_patent_pdf])?>\\\\\"> \r\n        <input name=\\\\\"add[save_patent_pdf]\\\\\" type=\\\\\"checkbox\\\\\" id=\\\\\"add[save_patent_pdf]\\\\\" value=\\\\\" checked\\\\\"<?=\$r[save_patent_pdf]?>>\r\n        远程保存 </td>\r\n    </tr>\r\n    <tr> \r\n      <td><textarea name=\\\\\"add[zz_patent_pdf]\\\\\" cols=\\\\\"60\\\\\" rows=\\\\\"10\\\\\" id=\\\\\"add[zz_patent_pdf]\\\\\"><?=htmlspecialchars(stripSlashes(\$r[zz_patent_pdf]))?></textarea></td>\r\n    </tr>\r\n    <tr> \r\n      <td><input name=\\\\\"add[z_patent_pdf]\\\\\" type=\\\\\"text\\\\\" id=\\\\\"patent_pdf5\\\\\" value=\\\\\"<?=stripSlashes(\$r[z_patent_pdf])?>\\\\\">\r\n        (如填写这里，这就是字段的值)</td>\r\n    </tr>\r\n  </table></td>\r\n  </tr>\r\n',16,'VARCHAR','255',1,$tid,'$tbname',0,'',0,0,1,'\r\n<input type=\\\\\"file\\\\\" name=\\\\\"patent_pdffile\\\\\" size=\\\\\"45\\\\\">\r\n',0,'',0,'','0','0','','','','','','','0','0');");
$empire->query("insert into ".$dbtbpre."enewsmod(mname,mtemp,mzs,cj,enter,tempvar,sonclass,searchvar,tid,tbname,qenter,mustqenterf,qmtemp,listandf,setandf,listtempvar,qmname,canaddf,caneditf,definfovoteid,showmod,usemod,myorder,orderf,isdefault,listfile,printtempid) values('专利系统模型','<table width=''100%'' align=center cellpadding=3 cellspacing=1 bgcolor=''#DBEAF5''><tr><td width=''16%'' height=25 bgcolor=''ffffff''>标题</td><td bgcolor=''ffffff''>[!--title--]</td></tr><tr><td width=''16%'' height=25 bgcolor=''ffffff''>特殊属性</td><td bgcolor=''ffffff''>[!--special.field--]</td></tr><tr><td width=''16%'' height=25 bgcolor=''ffffff''>发布时间</td><td bgcolor=''ffffff''>[!--newstime--]</td></tr><tr><td width=''16%'' height=25 bgcolor=''ffffff''>申请号</td><td bgcolor=''ffffff''>[!--application_number--]</td></tr><tr><td width=''16%'' height=25 bgcolor=''ffffff''>技术名称</td><td bgcolor=''ffffff''>[!--tech_name--]</td></tr><tr><td width=''16%'' height=25 bgcolor=''ffffff''>专利类型</td><td bgcolor=''ffffff''>[!--patent_type--]</td></tr><tr><td width=''16%'' height=25 bgcolor=''ffffff''>行业分类</td><td bgcolor=''ffffff''>[!--business_type--]</td></tr><tr><td width=''16%'' height=25 bgcolor=''ffffff''>要解决的技术问题</td><td bgcolor=''ffffff''>[!--problem_solved--]</td></tr><tr><td width=''16%'' height=25 bgcolor=''ffffff''>技术方案</td><td bgcolor=''ffffff''>[!--patent_solution--]</td></tr><tr><td width=''16%'' height=25 bgcolor=''ffffff''>用途或技术领域</td><td bgcolor=''ffffff''>[!--patent_usage_field--]</td></tr><tr><td width=''16%'' height=25 bgcolor=''ffffff''>附图1</td><td bgcolor=''ffffff''>[!--patent_pic1--]</td></tr><tr><td width=''16%'' height=25 bgcolor=''ffffff''>附图2</td><td bgcolor=''ffffff''>[!--patent_pic2--]</td></tr><tr><td width=''16%'' height=25 bgcolor=''ffffff''>分类号</td><td bgcolor=''ffffff''>[!--type_number--]</td></tr><tr><td width=''16%'' height=25 bgcolor=''ffffff''>专利pdf文本上传</td><td bgcolor=''ffffff''>[!--patent_pdf--]</td></tr></table>','','标题<!--field--->title<!--record-->发布时间<!--field--->newstime<!--record-->申请号<!--field--->application_number<!--record-->技术名称<!--field--->tech_name<!--record-->专利类型<!--field--->patent_type<!--record-->行业分类<!--field--->business_type<!--record-->要解决的技术问题<!--field--->problem_solved<!--record-->技术方案<!--field--->patent_solution<!--record-->用途或技术领域<!--field--->patent_usage_field<!--record-->分类号<!--field--->type_number<!--record-->','标题<!--field--->title<!--record-->特殊属性<!--field--->special.field<!--record-->发布时间<!--field--->newstime<!--record-->申请号<!--field--->application_number<!--record-->技术名称<!--field--->tech_name<!--record-->专利类型<!--field--->patent_type<!--record-->行业分类<!--field--->business_type<!--record-->要解决的技术问题<!--field--->problem_solved<!--record-->技术方案<!--field--->patent_solution<!--record-->用途或技术领域<!--field--->patent_usage_field<!--record-->附图1<!--field--->patent_pic1<!--record-->附图2<!--field--->patent_pic2<!--record-->分类号<!--field--->type_number<!--record-->专利pdf文本上传<!--field--->patent_pdf<!--record-->','标题<!--field--->title<!--record-->发布时间<!--field--->newstime<!--record-->申请号<!--field--->application_number<!--record-->技术名称<!--field--->tech_name<!--record-->专利类型<!--field--->patent_type<!--record-->行业分类<!--field--->business_type<!--record-->要解决的技术问题<!--field--->problem_solved<!--record-->技术方案<!--field--->patent_solution<!--record-->用途或技术领域<!--field--->patent_usage_field<!--record-->附图1<!--field--->patent_pic1<!--record-->附图2<!--field--->patent_pic2<!--record-->分类号<!--field--->type_number<!--record-->专利pdf文本上传<!--field--->patent_pdf<!--record-->','',',title,application_number,tech_name,problem_solved,patent_solution,patent_usage_field,type_number,',$tid,'$tbname','标题<!--field--->title<!--record-->申请号<!--field--->application_number<!--record-->技术名称<!--field--->tech_name<!--record-->专利类型<!--field--->patent_type<!--record-->行业分类<!--field--->business_type<!--record-->要解决的技术问题<!--field--->problem_solved<!--record-->技术方案<!--field--->patent_solution<!--record-->用途或技术领域<!--field--->patent_usage_field<!--record-->附图1<!--field--->patent_pic1<!--record-->附图2<!--field--->patent_pic2<!--record-->分类号<!--field--->type_number<!--record-->专利pdf文本上传<!--field--->patent_pdf<!--record-->',',title,application_number,tech_name,problem_solved,patent_solution,patent_usage_field,type_number,','<table width=100% align=center cellpadding=3 cellspacing=1 bgcolor=#DBEAF5><tr><td width=''16%'' height=25 bgcolor=''ffffff''>标题</td><td bgcolor=''ffffff''>[!--title--]</td></tr><tr><td width=''16%'' height=25 bgcolor=''ffffff''>申请号</td><td bgcolor=''ffffff''>[!--application_number--]</td></tr><tr><td width=''16%'' height=25 bgcolor=''ffffff''>技术名称</td><td bgcolor=''ffffff''>[!--tech_name--]</td></tr><tr><td width=''16%'' height=25 bgcolor=''ffffff''>专利类型</td><td bgcolor=''ffffff''>[!--patent_type--]</td></tr><tr><td width=''16%'' height=25 bgcolor=''ffffff''>行业分类</td><td bgcolor=''ffffff''>[!--business_type--]</td></tr><tr><td width=''16%'' height=25 bgcolor=''ffffff''>要解决的技术问题</td><td bgcolor=''ffffff''>[!--problem_solved--]</td></tr><tr><td width=''16%'' height=25 bgcolor=''ffffff''>技术方案</td><td bgcolor=''ffffff''>[!--patent_solution--]</td></tr><tr><td width=''16%'' height=25 bgcolor=''ffffff''>用途或技术领域</td><td bgcolor=''ffffff''>[!--patent_usage_field--]</td></tr><tr><td width=''16%'' height=25 bgcolor=''ffffff''>附图1</td><td bgcolor=''ffffff''>[!--patent_pic1--]</td></tr><tr><td width=''16%'' height=25 bgcolor=''ffffff''>附图2</td><td bgcolor=''ffffff''>[!--patent_pic2--]</td></tr><tr><td width=''16%'' height=25 bgcolor=''ffffff''>分类号</td><td bgcolor=''ffffff''>[!--type_number--]</td></tr><tr><td width=''16%'' height=25 bgcolor=''ffffff''>专利pdf文本上传</td><td bgcolor=''ffffff''>[!--patent_pdf--]</td></tr></table>','',0,'标题<!--field--->title<!--record-->发布时间<!--field--->newstime<!--record-->申请号<!--field--->application_number<!--record-->技术名称<!--field--->tech_name<!--record-->专利类型<!--field--->patent_type<!--record-->行业分类<!--field--->business_type<!--record-->要解决的技术问题<!--field--->problem_solved<!--record-->技术方案<!--field--->patent_solution<!--record-->用途或技术领域<!--field--->patent_usage_field<!--record-->附图1<!--field--->patent_pic1<!--record-->附图2<!--field--->patent_pic2<!--record-->分类号<!--field--->type_number<!--record-->','专利信息',',title,newstime,application_number,tech_name,patent_type,business_type,problem_solved,patent_solution,patent_usage_field,patent_pic1,patent_pic2,type_number,patent_pdf,',',title,newstime,application_number,tech_name,patent_type,business_type,problem_solved,patent_solution,patent_usage_field,patent_pic1,patent_pic2,type_number,patent_pdf,',0,0,0,0,'',0,'',0);");
$mid=$empire->lastid();
?>