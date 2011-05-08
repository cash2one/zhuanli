<?php
if(!defined('InEmpireCMS'))
{
	exit();
}
?><?php
$empire->query(str_replace("phome_ecms_requirements",$dbtbpre."ecms_".$tbname,SetCreateTable("CREATE TABLE `phome_ecms_requirements` (
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
  `require_detail` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `checked` (`checked`),
  KEY `newstime` (`newstime`),
  KEY `truetime` (`truetime`),
  KEY `classid` (`classid`),
  KEY `ttid` (`ttid`)
) TYPE=MyISAM",$phome_db_dbchar)));

$empire->query(str_replace("phome_ecms_requirements_data_1",$dbtbpre."ecms_".$tbname."_data_1",SetCreateTable("CREATE TABLE `phome_ecms_requirements_data_1` (
  `id` int(11) NOT NULL DEFAULT '0',
  `classid` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) TYPE=MyISAM",$phome_db_dbchar)));

$empire->query(str_replace("phome_ecms_requirements_doc",$dbtbpre."ecms_".$tbname."_doc",SetCreateTable("CREATE TABLE `phome_ecms_requirements_doc` (
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
  `require_detail` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `checked` (`checked`),
  KEY `newstime` (`newstime`),
  KEY `truetime` (`truetime`),
  KEY `classid` (`classid`),
  KEY `ttid` (`ttid`)
) TYPE=MyISAM",$phome_db_dbchar)));

$empire->query(str_replace("phome_ecms_requirements_doc_data",$dbtbpre."ecms_".$tbname."_doc_data",SetCreateTable("CREATE TABLE `phome_ecms_requirements_doc_data` (
  `id` int(11) NOT NULL DEFAULT '0',
  `classid` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) TYPE=MyISAM",$phome_db_dbchar)));

$empire->query(str_replace("phome_ecms_infoclass_requirements",$dbtbpre."ecms_infoclass_".$tbname,SetCreateTable("CREATE TABLE `phome_ecms_infoclass_requirements` (
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
  `zz_require_detail` text NOT NULL,
  `z_require_detail` varchar(255) NOT NULL,
  `qz_require_detail` varchar(255) NOT NULL,
  `save_require_detail` varchar(10) NOT NULL,
  KEY `classid` (`classid`)
) TYPE=MyISAM",$phome_db_dbchar)));

$empire->query(str_replace("phome_ecms_infotmp_requirements",$dbtbpre."ecms_infotmp_".$tbname,SetCreateTable("CREATE TABLE `phome_ecms_infotmp_requirements` (
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
  `require_detail` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`)
) TYPE=MyISAM",$phome_db_dbchar)));

$empire->query("insert into ".$dbtbpre."enewstable(tbname,tname,tsay,isdefault,datatbs,deftb,yhid,mid) values('$tbname','专利需求','专利需求',0,',1,','1',0,0);");
$tid=$empire->lastid();
$empire->query("insert into ".$dbtbpre."enewsf(f,fname,fform,fhtml,fzs,isadd,isshow,iscj,cjhtml,myorder,ftype,flen,dotemp,tid,tbname,savetxt,fvalue,iskey,tobr,dohtml,qfhtml,isonly,linkfieldval,samedata,fformsize,tbdataf,ispage,adddofun,editdofun,qadddofun,qeditdofun,linkfieldtb,linkfieldshow,editorys,issmalltext) values('title','标题','text','<table width=\\\\\"100%\\\\\" border=\\\\\"0\\\\\" cellpadding=\\\\\"0\\\\\" cellspacing=\\\\\"0\\\\\" bgcolor=\\\\\"#DBEAF5\\\\\">\r\n<tr> \r\n  <td height=\\\\\"25\\\\\" bgcolor=\\\\\"#FFFFFF\\\\\">\r\n<?=\$tts?\\\\\"<select name=\\\\''ttid\\\\''><option value=\\\\''0\\\\''>标题分类</option>\$tts</select>\\\\\":\\\\\"\\\\\"?>\r\n	<input type=text name=title value=\\\\\"<?=htmlspecialchars(stripSlashes(\$r[title]))?>\\\\\" size=\\\\\"60\\\\\"> \r\n	<input type=\\\\\"button\\\\\" name=\\\\\"button\\\\\" value=\\\\\"图文\\\\\" onclick=\\\\\"document.add.title.value=document.add.title.value+\\\\''(图文)\\\\'';\\\\\"> \r\n  </td>\r\n</tr>\r\n<tr> \r\n  <td height=\\\\\"25\\\\\" bgcolor=\\\\\"#FFFFFF\\\\\">属性: \r\n	<input name=\\\\\"titlefont[b]\\\\\" type=\\\\\"checkbox\\\\\" value=\\\\\"b\\\\\"<?=\$titlefontb?>>粗体\r\n	<input name=\\\\\"titlefont[i]\\\\\" type=\\\\\"checkbox\\\\\" value=\\\\\"i\\\\\"<?=\$titlefonti?>>斜体\r\n	<input name=\\\\\"titlefont[s]\\\\\" type=\\\\\"checkbox\\\\\" value=\\\\\"s\\\\\"<?=\$titlefonts?>>删除线\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;颜色: <input name=\\\\\"titlecolor\\\\\" type=\\\\\"text\\\\\" value=\\\\\"<?=stripSlashes(\$r[titlecolor])?>\\\\\" size=\\\\\"10\\\\\"><a onclick=\\\\\"foreColor();\\\\\"><img src=\\\\\"../data/images/color.gif\\\\\" width=\\\\\"21\\\\\" height=\\\\\"21\\\\\" align=\\\\\"absbottom\\\\\"></a>\r\n  </td>\r\n</tr>\r\n</table>','标题',0,1,1,'  <tr bgcolor=\"#FFFFFF\"> \r\n    <td height=\"22\" valign=\"top\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\"textfield\" type=\"text\" id=\"textfield\" value=\"[!--title--]\" size=\"20\">)</td>\r\n    <td><table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\">\r\n        <tr> \r\n          <td><textarea name=\"add[zz_title]\" cols=\"60\" rows=\"10\" id=\"textarea\"><?=htmlspecialchars(stripSlashes(\$r[zz_title]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\"add[z_title]\" type=\"text\" id=\"add[z_title]\" value=\"<?=stripSlashes(\$r[z_title])?>\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>',0,'CHAR','200',1,$tid,'$tbname',0,'',0,0,0,'<input name=\\\\\"title\\\\\" type=\\\\\"text\\\\\" size=\\\\\"30\\\\\" value=\\\\\"<?=DoReqValue(\$mid,\\\\''title\\\\'',stripSlashes(\$r[title]))?>\\\\\">',0,'',0,'60','0','0','','','','','','','0','0');");
$empire->query("insert into ".$dbtbpre."enewsf(f,fname,fform,fhtml,fzs,isadd,isshow,iscj,cjhtml,myorder,ftype,flen,dotemp,tid,tbname,savetxt,fvalue,iskey,tobr,dohtml,qfhtml,isonly,linkfieldval,samedata,fformsize,tbdataf,ispage,adddofun,editdofun,qadddofun,qeditdofun,linkfieldtb,linkfieldshow,editorys,issmalltext) values('special.field','特殊属性','','<table width=\\\\\"100%\\\\\" border=\\\\\"0\\\\\" cellpadding=\\\\\"0\\\\\" cellspacing=\\\\\"0\\\\\" bgcolor=\\\\\"#DBEAF5\\\\\">\r\n  <tr>\r\n    <td height=\\\\\"25\\\\\" bgcolor=\\\\\"#FFFFFF\\\\\">信息属性: \r\n      <input name=\\\\\"isgood\\\\\" type=\\\\\"checkbox\\\\\" value=\\\\\"1\\\\\"<?=\$r[isgood]?\\\\'' checked\\\\'':\\\\''\\\\''?>>推荐\r\n	  &nbsp;&nbsp; <input name=\\\\\"checked\\\\\" type=\\\\\"checkbox\\\\\" value=\\\\\"1\\\\\"<?=\$r[checked]?\\\\'' checked\\\\'':\\\\''\\\\''?>>审核\r\n	  &nbsp;&nbsp; <input name=\\\\\"firsttitle\\\\\" type=\\\\\"checkbox\\\\\" value=\\\\\"1\\\\\"<?=\$r[firsttitle]?\\\\'' checked\\\\'':\\\\''\\\\''?>>头条\r\n	</td>\r\n  </tr>\r\n  <tr> \r\n    <td height=\\\\\"25\\\\\" bgcolor=\\\\\"#FFFFFF\\\\\">关键字&nbsp;&nbsp;&nbsp;: \r\n      <input name=\\\\\"keyboard\\\\\" type=\\\\\"text\\\\\" size=\\\\\"49\\\\\" value=\\\\\"<?=stripSlashes(\$r[keyboard])?>\\\\\">\r\n      <font color=\\\\\"#666666\\\\\">(多个请用&quot;,&quot;格开)</font></td>\r\n  </tr>\r\n  <tr> \r\n    <td height=\\\\\"25\\\\\" bgcolor=\\\\\"#FFFFFF\\\\\">外部链接: \r\n      <input name=\\\\\"titleurl\\\\\" type=\\\\\"text\\\\\" value=\\\\\"<?=stripSlashes(\$r[titleurl])?>\\\\\" size=\\\\\"49\\\\\">\r\n      <font color=\\\\\"#666666\\\\\">(填写后信息连接地址将为此链接)</font></td>\r\n  </tr>\r\n</table>','特殊属性',0,1,0,'',0,'','0',0,$tid,'$tbname',0,'',0,0,0,'关键字: \r\n      <input name=\\\\\"keyboard\\\\\" type=\\\\\"text\\\\\" value=\\\\\"<?=stripSlashes(\$r[keyboard])?>\\\\\">\r\n      <font color=\\\\\"#666666\\\\\">(多个请用&quot;,&quot;格开)</font>',0,'',0,'','0','0','','','','','','','0','0');");
$empire->query("insert into ".$dbtbpre."enewsf(f,fname,fform,fhtml,fzs,isadd,isshow,iscj,cjhtml,myorder,ftype,flen,dotemp,tid,tbname,savetxt,fvalue,iskey,tobr,dohtml,qfhtml,isonly,linkfieldval,samedata,fformsize,tbdataf,ispage,adddofun,editdofun,qadddofun,qeditdofun,linkfieldtb,linkfieldshow,editorys,issmalltext) values('titlepic','标题图片','img','<input name=\\\\\"titlepic\\\\\" type=\\\\\"text\\\\\" value=\\\\\"<?=stripSlashes(\$r[titlepic])?>\\\\\" size=\\\\\"60\\\\\">\r\n<a onclick=\\\\\"window.open(\\\\''ecmseditor/FileMain.php?type=1&classid=<?=\$classid?>&filepass=<?=\$filepass?>&doing=1&field=titlepic\\\\'',\\\\''\\\\'',\\\\''width=700,height=550,scrollbars=yes\\\\'');\\\\\" title=\\\\\"选择已上传的图片\\\\\"><img src=\\\\\"../data/images/changeimg.gif\\\\\" width=\\\\\"22\\\\\" height=\\\\\"22\\\\\" border=\\\\\"0\\\\\" align=\\\\\"absbottom\\\\\"></a>','标题图片',0,1,1,'  <tr bgcolor=\"#FFFFFF\"> \r\n    <td height=\"22\" valign=\"top\"><strong>[!--enews.name--]正则：</strong><br>\r\n      ( \r\n      <input name=\"textfield\" type=\"text\" id=\"textfield\" value=\"[!--titlepic--]\" size=\"20\">\r\n      )</td>\r\n    <td><table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\">\r\n    <tr>\r\n      <td>附件前缀 \r\n        <input name=\"add[qz_titlepic]\" type=\"text\" id=\"add[qz_titlepic]\" value=\"<?=stripSlashes(\$r[qz_titlepic])?>\"> \r\n        <input name=\"add[save_titlepic]\" type=\"checkbox\" id=\"add[save_titlepic]\" value=\" checked\"<?=\$r[save_titlepic]?>>\r\n        远程保存 </td>\r\n    </tr>\r\n    <tr> \r\n      <td><textarea name=\"add[zz_titlepic]\" cols=\"60\" rows=\"10\" id=\"add[zz_titlepic]\"><?=htmlspecialchars(stripSlashes(\$r[zz_titlepic]))?></textarea></td>\r\n    </tr>\r\n    <tr> \r\n      <td><input name=\"add[z_titlepic]\" type=\"text\" id=\"titlepic5\" value=\"<?=stripSlashes(\$r[z_titlepic])?>\">\r\n        (如填写这里，这就是字段的值)</td>\r\n    </tr>\r\n  </table></td>\r\n  </tr>',0,'CHAR','200',1,$tid,'$tbname',0,'',0,0,0,'<input type=\\\\\"file\\\\\" name=\\\\\"titlepicfile\\\\\">',0,'',0,'60','0','0','','','','','','','0','0');");
$empire->query("insert into ".$dbtbpre."enewsf(f,fname,fform,fhtml,fzs,isadd,isshow,iscj,cjhtml,myorder,ftype,flen,dotemp,tid,tbname,savetxt,fvalue,iskey,tobr,dohtml,qfhtml,isonly,linkfieldval,samedata,fformsize,tbdataf,ispage,adddofun,editdofun,qadddofun,qeditdofun,linkfieldtb,linkfieldshow,editorys,issmalltext) values('newstime','发布时间','text','<input name=\\\\\"newstime\\\\\" type=\\\\\"text\\\\\" value=\\\\\"<?=\$r[newstime]?>\\\\\"><input type=button name=button value=\\\\\"设为当前时间\\\\\" onclick=\\\\\"document.add.newstime.value=\\\\''<?=\$todaytime?>\\\\''\\\\\">','发布时间',0,1,1,'  <tr bgcolor=\"#FFFFFF\"> \r\n    <td height=\"22\" valign=\"top\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\"textfield\" type=\"text\" id=\"textfield\" value=\"[!--newstime--]\" size=\"20\">)</td>\r\n    <td><table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\">\r\n        <tr> \r\n          <td><textarea name=\"add[zz_newstime]\" cols=\"60\" rows=\"10\" id=\"textarea\"><?=htmlspecialchars(stripSlashes(\$r[zz_newstime]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\"add[z_newstime]\" type=\"text\" id=\"add[z_newstime]\" value=\"<?=stripSlashes(\$r[z_newstime])?>\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>',0,'INT','10',1,$tid,'$tbname',0,'',0,0,0,'<input name=\\\\\"newstime\\\\\" type=\\\\\"text\\\\\" value=\\\\\"<?=\$r[newstime]?>\\\\\"><input type=button name=button value=\\\\\"设为当前时间\\\\\" onclick=\\\\\"document.add.newstime.value=\\\\''<?=\$todaytime?>\\\\''\\\\\">',0,'',0,'','0','0','','','','','','','0','0');");
$empire->query("insert into ".$dbtbpre."enewsf(f,fname,fform,fhtml,fzs,isadd,isshow,iscj,cjhtml,myorder,ftype,flen,dotemp,tid,tbname,savetxt,fvalue,iskey,tobr,dohtml,qfhtml,isonly,linkfieldval,samedata,fformsize,tbdataf,ispage,adddofun,editdofun,qadddofun,qeditdofun,linkfieldtb,linkfieldshow,editorys,issmalltext) values('require_detail','专利需求描述','textarea','\r\n<textarea name=\\\\\"require_detail\\\\\" cols=\\\\\"60\\\\\" rows=\\\\\"10\\\\\" id=\\\\\"require_detail\\\\\"><?=\$ecmsfirstpost==1?\\\\\"\\\\\":htmlspecialchars(stripSlashes(\$r[require_detail]))?></textarea>\r\n','',1,1,1,'\r\n  <tr bgcolor=\\\\\"#FFFFFF\\\\\"> \r\n    <td height=\\\\\"22\\\\\" valign=\\\\\"top\\\\\"><strong>[!--enews.name--]正则：</strong><br>\r\n      (<input name=\\\\\"textfield\\\\\" type=\\\\\"text\\\\\" id=\\\\\"textfield\\\\\" value=\\\\\"[!--require_detail--]\\\\\" size=\\\\\"20\\\\\">)</td>\r\n    <td><table width=\\\\\"100%\\\\\" border=\\\\\"0\\\\\" cellspacing=\\\\\"1\\\\\" cellpadding=\\\\\"3\\\\\">\r\n        <tr> \r\n          <td><textarea name=\\\\\"add[zz_require_detail]\\\\\" cols=\\\\\"60\\\\\" rows=\\\\\"10\\\\\" id=\\\\\"textarea\\\\\"><?=htmlspecialchars(stripSlashes(\$r[zz_require_detail]))?></textarea></td>\r\n        </tr>\r\n        <tr> \r\n          <td><input name=\\\\\"add[z_require_detail]\\\\\" type=\\\\\"text\\\\\" id=\\\\\"add[z_require_detail]\\\\\" value=\\\\\"<?=stripSlashes(\$r[z_require_detail])?>\\\\\">\r\n            (如填写这里，将为字段的值)</td>\r\n        </tr>\r\n      </table></td>\r\n  </tr>\r\n',0,'TEXT','',1,$tid,'$tbname',0,'',0,0,1,'\r\n<textarea name=\\\\\"require_detail\\\\\" cols=\\\\\"60\\\\\" rows=\\\\\"10\\\\\" id=\\\\\"require_detail\\\\\"><?=\$ecmsfirstpost==1?\\\\\"\\\\\":DoReqValue(\$mid,\\\\''require_detail\\\\'',stripSlashes(\$r[require_detail]))?></textarea>\r\n',0,'',0,'','0','0','','','','','','','0','0');");
$empire->query("insert into ".$dbtbpre."enewsmod(mname,mtemp,mzs,cj,enter,tempvar,sonclass,searchvar,tid,tbname,qenter,mustqenterf,qmtemp,listandf,setandf,listtempvar,qmname,canaddf,caneditf,definfovoteid,showmod,usemod,myorder,orderf,isdefault,listfile,printtempid) values('专利需求系统模型','<table width=''100%'' align=center cellpadding=3 cellspacing=1 bgcolor=''#DBEAF5''><tr><td width=''16%'' height=25 bgcolor=''ffffff''>标题</td><td bgcolor=''ffffff''>[!--title--]</td></tr><tr><td width=''16%'' height=25 bgcolor=''ffffff''>特殊属性</td><td bgcolor=''ffffff''>[!--special.field--]</td></tr></table>','','标题<!--field--->title<!--record-->','标题<!--field--->title<!--record-->特殊属性<!--field--->special.field<!--record-->','标题<!--field--->title<!--record-->发布时间<!--field--->newstime<!--record-->专利需求描述<!--field--->require_detail<!--record-->','',',title,require_detail,',$tid,'$tbname','标题<!--field--->title<!--record-->专利需求描述<!--field--->require_detail<!--record-->',',title,require_detail,','<table width=100% align=center cellpadding=3 cellspacing=1 bgcolor=#DBEAF5><tr><td width=''16%'' height=25 bgcolor=''ffffff''>标题</td><td bgcolor=''ffffff''>[!--title--]</td></tr><tr><td width=''16%'' height=25 bgcolor=''ffffff''>专利需求描述</td><td bgcolor=''ffffff''>[!--require_detail--]</td></tr></table>','',0,'标题<!--field--->title<!--record-->发布时间<!--field--->newstime<!--record-->专利需求描述<!--field--->require_detail<!--record-->','',',title,titlepic,newstime,require_detail,',',title,titlepic,newstime,require_detail,',0,0,0,0,'',0,'',0);");
$mid=$empire->lastid();
?>