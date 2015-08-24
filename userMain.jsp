<%@ page language="java"  contentType="text/html;charset=GBK" session="false" %>
<%@ page language="java" import="com.tc.portal.util.UserUtil"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+"/";
%>
<html xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office"><head>
<meta http-equiv="Content-Type" content="text/html;charset=GBK">
<link href="/xrap/css/xrap.css" rel="stylesheet" type="text/css">
<link href="/xrap/css/luna/tab.css" rel="stylesheet" type="text/css">
<!-- 灰色样式
<link href="/xrap/jcl/ext/resources/css/ext-all.css" rel="stylesheet" type="text/css">
 -->
<link href="/xrap/jcl/ext/resources/css/xtheme-gray.css" rel="stylesheet" type="text/css">

<link href="/xrap/css/usermain.css" rel="stylesheet" type="text/css">
<style type="text/css">

.img_l{background:url(/xrap/images/red_left.png);width: 8px; height: 20px;}
.img_m{background:url(/xrap/images/red_m.png);
		   background-repeat:repeat-x; color: white; min-width: 2px; max-width: auto; height: 20px;}
.img_r{background:url(/xrap/images/red_right.png);width: 8px; height: 20px;}
.kong{width: 10px;}
</style>
<script language=javascript type="text/javascript" src="/xrap/webeditor/p2cpeditor.js"></script>
<% String loginInfo=UserUtil.getLoginInfo(request);String deskInfo=UserUtil.getDeskInfo(request);String resourcesInfo=UserUtil.getResourcesInfo(request);String orgInfo=UserUtil.getOrgInfo(request);if(!"1".equals(loginInfo)){request.removeAttribute("SESSION_USER_MODEL");request.getSession().setAttribute("logon","1");} %>  
<script type="text/javascript">
var global=new String("<%=loginInfo%>");var deskInfo="<%=deskInfo%>";var resourcesInfo="<%=resourcesInfo%>";var orgInfo='<%=orgInfo%>';
eval("this.userInfo="+global);if(this.userInfo!=1){var gvar="";for(var varname in this.userInfo){gvar+='var '+varname+'="'+this.userInfo[varname]+'";';}eval(gvar);this.userInfo=null;}
document.title="新疆公安监督管理信息平台" ;
if(_DWDM.substring(6,8)=="34"){//如果是督察
	document.title="新疆公安网上督察管理信息系统" ;
}

</script>
<!--<script language=javascript type="text/javascript" src="/xrap/jcl/js/lang/Base.js"></script>-->
<script language=javascript type="text/javascript" src="/xrap/zhxt/public/js/qjbl.js"></script>
<script language=javascript type="text/javascript" src="/xrap/jcl/js/lang/System.js"></script>
<script language=javascript type="text/javascript" src="/xrap/jcl/js/ui/UI.zjs"></script>
<script language=javascript type="text/javascript" src="/xrap/jcl/js/db/DB.zjs"></script>
<script language=javascript type="text/javascript" src="/xrap/jcl/ext/ext-base.zjs"></script>
<script language=javascript type="text/javascript" src="/xrap/jcl/ext/ext-all.zjs"></script>
<script language=javascript type="text/javascript" src="/xrap/jcl/mq/amq.js"></script>
<script language=javascript type="text/javascript" src="/xrap/jcl/tabpane/tabpane.js"></script>

<!--<script language=javascript type="text/javascript" src="/xrap/jcl/DBHtml.js"></script>-->
<script type="text/javascript">

var curTab;var today=new Date();var day;var date;var hello;var wel;var hour=today.getHours();if(hour<6)hello='凌晨好';else if(hour<9)hello='早上好';else if(hour<12)hello='上午好';else if(hour<14)hello='中午好';else if(hour<17)hello='下午好';else if(hour<19)hello='傍晚好';else if(hour<22)hello='晚上好';else hello='夜里好';wel=today.getDay();if(wel==0)day='星期日';else if(wel==1)day='星期一';else if(wel==2)day='星期二';else if(wel==3)day='星期三';else if(wel==4)day='星期四';else if(wel==5)day='星期五';else if(wel==6)day='星期六';date=(today.getYear())+'年'+(today.getMonth()+1)+'月'+today.getDate()+'日';
window.VirtualPath="/xrap";var pageID,xrappath,status=_DWMC+'  '+_YHXM+' '+hello+'！今天是'+date+' '+day+' ',deskform=null;
function setDiv(){
	var curTab;var today=new Date();var day;var date;var hello;var wel;var hour=today.getHours();if(hour<6)hello='凌晨好';else if(hour<9)hello='早上好';else if(hour<12)hello='上午好';else if(hour<14)hello='中午好';else if(hour<17)hello='下午好';else if(hour<19)hello='傍晚好';else if(hour<22)hello='晚上好';else hello='夜里好';wel=today.getDay();if(wel==0)day='星期日';else if(wel==1)day='星期一';else if(wel==2)day='星期二';else if(wel==3)day='星期三';else if(wel==4)day='星期四';else if(wel==5)day='星期五';else if(wel==6)day='星期六';date=(today.getYear())+'年'+(today.getMonth()+1)+'月'+today.getDate()+'日';
window.VirtualPath="/xrap";var pageID,xrappath,status=_DWMC+'  '+_YHXM+' '+hello+'！今天是'+date+' '+day+' ',deskform=null;
var set_div=_DWMC+'  '+_YHXM+' '+hello+'！今天是'+date+' ';
document.getElementById('div_top').innerHTML=set_div;
}
//20100702
zTree=function(o,callback,md,rsc){this.c={LCln:"l1",L0Cln:"l12",L1Cln:"l21",L2Cln:"l22",resource:rsc||resourcesInfo,imgpath:"/xrap/images/tree",mode:md};this.reg="\\{[^}{;]+PARENT_ID':'$PID$'[^}{;]+\\}";this.o=o;this.callHandler=callback;this.loaded=false;this.nodes=[];};zTree.prototype.toString=function(){var nodeHtml="";switch(this.c.mode){case"normal":var node=this.nodes[this.selTabID];this.fillNodes(node,false);nodeHtml=this.paintNode(node);break;default:this.initNodes();nodeHtml=this.paintNode(this.nodes["-1"]);break;}return nodeHtml;};zTree.prototype.initNodes=function(){var res=this.reg.replace("$PID$","-1");var reg=new RegExp(res,"g");var cNodes=this.c.resource.match(reg);if(cNodes.length>0){eval("var node="+cNodes[0]);node.level=0;this.nodes["-1"]=node;this.fillNodes(this.nodes["-1"],false);}};zTree.prototype.fillNodes=function(node,loaded){var res=this.reg.replace("$PID$",node.FUNC_ID);var reg=new RegExp(res,"g");var cNodes=this.c.resource.match(reg);if(cNodes&&cNodes.length>0){node.childNodes=[];node.subNodesID=[];node.loaded=true;var str=",",nid,level;level=node.level+1;for(var i=0;i<cNodes.length;i++){eval("var snode="+cNodes[i]);nid=snode.FUNC_ID;node.childNodes[nid]=snode;snode.parent=node,snode.level=level;this.nodes[nid]=snode;if(str.indexOf(","+nid+",")==-1){node.subNodesID[node.subNodesID.length]=nid;str=str+nid+",";}if(loaded){this.fillNodes(snode,loaded);}}}};zTree.prototype.paintNode=function(pNode){var cNodes=pNode.childNodes;var sNdsID=pNode.subNodesID;var ns=[],md=this.c.mode==="normal"?true:false;var lv=pNode.level,pid=parseInt(pNode.PARENT_ID);if(md){lv=lv-1;pid=pid-1;}if(sNdsID&&sNdsID.length>0){var node=null,cln=this.c.LCln,acln="",scln="";if(lv!==0){acln=" style=\"padding-left:"+(lv*13)+"px;\"";scln="padding-left:3px;";}ns[ns.length]="<ul id=\""+(lv===0?"menu":"sn_"+pNode.FUNC_ID)+"\">";for(var i=0;i<sNdsID.length;i++){node=cNodes[sNdsID[i]];if(pid!==-1)cln=node.FUNC_TYPE==="0"?this.c.L1Cln:this.c.L2Cln;else cln=node.FUNC_TYPE==="0"?this.c.LCln:this.c.L0Cln;ns[ns.length]="<li id=\"elm_"+node.FUNC_ID+"\" class=\""+cln+"\">";ns[ns.length]="<a href=\"#\""+acln+" onclick=\""+this.o+".clickHandler('"+node.FUNC_TYPE+"','"+node.FUNC_ID+"','"+node.FUNC_URL+"','"+node.FUNC_NAME+"');\" id=\"a_"+node.FUNC_ID+"\">";ns[ns.length]="<span style=\"white-space:nowrap;overflow-x:hidden;"+scln+"\"><img class=\""+(node.FUNC_TYPE==="0"?"level0ICO":"otherICO")+"\" src=\""+GetResourcePath()+"/common/space.gif\" align=\"absMiddle\" />"+node.FUNC_NAME+"</span>";ns[ns.length]="</a></li>";}ns[ns.length]="</ul>";}return ns.join("");};zTree.prototype.clickHandler=function(type,id,url,dsp){var node=this.nodes[id];if(parseInt(type)===0){if(!node.loaded){this.fillNodes(node,false);var subHtml=this.paintNode(node);this.getObjectById("elm_"+id).insertAdjacentHTML("beforeEnd",subHtml);this.getObjectById("a_"+id).className="active";}else{this.collapseNode(node);}}else{this.collapseNode(node);var args=Array.prototype.slice.call(arguments,1);this.callHandler.apply(null,args);}};zTree.prototype.collapseNode=function(node){var o=this.getObjectById("sn_"+node.FUNC_ID);var a=this.getObjectById("a_"+node.FUNC_ID);if(o){if(o.style.display!=="none"){a.className="";o.style.display="none";}else{a.className="active";o.style.display="";}}else{if(a.className=="active")a.className="";else a.className="active";if(this.oldElm!=a){if(this.oldElm)this.oldElm.className="";this.oldElm=a;}}};zTree.prototype.getObjectById=function(id){return document.getElementById(id);};
//
Ext.ux.TabCloseMenu=function(){var tabs,menu,ctxItem;this.init=function(tp){tabs=tp;tabs.on('contextmenu',onContextMenu);}
function onContextMenu(ts,item,e){curTab=item;var len=contentPanel.items.length;if(len==1){popMenu(itemMenu,90,"00");}else if(len==2&&item.id!="homePage"){popMenu(itemMenu,90,"10");}else if(len>2&&item.id!="homePage"){popMenu(itemMenu,90,"11");}}}//20091205ll
if(typeof(_WEBSERVER)!="undefined")xrappath=location.protocol+"//"+_WEBSERVER+"/xrap";else xrappath=location.protocol+"//"+location.host+"/xrap";
if(this.userInfo=="1")window.location.href=xrappath;
function KeyDown(){if(event.keyCode==8){if(((event.srcElement.type!="text")&&(event.srcElement.type!="textarea")&&(event.srcElement.type!="password"))||event.srcElement.readOnly){event.keyCode=0;event.returnValue=false;}}
if(window.event.keyCode==116||window.event.keyCode==122||window.event.keyCode==112||window.event.keyCode==113||(event.shiftKey&&event.keyCode==121)||event.keyCode==122||(event.ctrlKey&&(event.keyCode==78||event.keyCode==69||event.keyCode==72||event.keyCode==76||event.keyCode==79||event.keyCode==80||event.keyCode==87))){event.keyCode=0;event.returnValue=false;}
if(event.ctrlKey&&event.keyCode==82){if(js.__curLoadState){try{if(js.__curWindow.curTabFormSheet&&js.__curWindow.curTabFormSheet.Reload)js.__curWindow.curTabFormSheet.Reload();else if(js.__curWindow.parent!=js.__curWindow&&js.__curWindow.parent.curTabFormSheet&&js.__curWindow.parent.curTabFormSheet.Reload)js.__curWindow.parent.curTabFormSheet.Reload();}catch(e){}}event.keyCode=0;event.returnValue=false;}
if(window.event.altKey&&window.event.keyCode==115){window.showModelessDialog("about:blank","","dialogWidth:1px;dialogheight:1px");return false;}
if(event.ctrlKey&&event.keyCode==83){var url;if(!window.dialogArguments){var tab=contentPanel.getActiveTab();url=document.frames["page"+tab.id].location.pathname;}else url=document.location.pathname;window.clipboardData.setData("Text",url.replace(new RegExp("/","g"),"\\").replace("\\xrap",""));}
if(window.event.altKey&&(window.event.keyCode==37||window.event.keyCode==39)){event.returnValue=false;}}
function getDeskForm(){if(document.frames)deskform=document.frames["pagehomePage"];else deskform=document.getElementById("pagehomePage").contentWindow;contentPanel.setActiveTab(0);}
function userHelp(){window.open("/xrap/help.html","_blank","top=170,left=540,height=350,width=350,status=no,toolbar=no,menubar=no,location=no,resizable=no,scrollbars=no");}
function userConfig(){
if(isIE6)js.showform("/xrap/zhxt/public/userconfig.html",null,398,225,"系统设置");
else js.showform("/xrap/zhxt/public/userconfig.html",null,398,195,"系统设置");
}
function RefreshTab(){if(!js.__curLoadState)return;var tab=contentPanel.getActiveTab();var oID=tab.id;if(oID=='homePage'){tab=null;return;}var btn_refresh=document.getElementById('btn_refresh');var oBtn_Click=btn_refresh.onclick;btn_refresh.onclick=null;var oTitle=tab.title;var oUrl;if(document.frames)oUrl=document.frames("page"+oID).document.location.href;else oUrl=document.getElementById("page"+oID).contentWindow.document.location.href;oUrl=oUrl.substring(oUrl.indexOf('/xrap/')+6,oUrl.length);contentPanel.remove(tab);addTab(oID,oUrl,oTitle);setTimeout(function(){btn_refresh.onclick=oBtn_Click;},3000);}
function userReturn(){reUserForUserMain(true);try{var o=new ActiveXObject("WScript.Shell");
o.Run("iexplore.exe "+parent.xrappath+"/index.jsp?relogin=true",0,0);
o.Run('%COMSPEC% /c taskkill /IM iexplore.exe /FI "WINDOWTITLE eq '+document.title+'*"',0,0);}catch(e){history.back(-1);/*20100408*/}finally{o=null;window.close();}}
function closeTab(){var tab=contentPanel.getActiveTab();if(tab&&tab.id!='homePage'){contentPanel.remove(tab);tab=null;}}

function setImg(flag,imgid){switch(flag){case 0:{if(imgid==0)document.getElementById("img_exit").src="/xrap/images/tc.png";else document.getElementById("img_exit").src="/xrap/images/tc2.png";break;}case 1:{if(imgid==0)document.getElementById("img_return").src="/xrap/images/zx.png";else document.getElementById("img_return").src="/xrap/images/zx2.png";break;}case 2:{if(imgid==0)document.getElementById("img_refresh").src="/xrap/images/sx.png";else document.getElementById("img_refresh").src="/xrap/images/sx2.png";break;}case 3:{if(imgid==0)document.getElementById("img_close").src="/xrap/images/tc.png";else document.getElementById("img_close").src="/xrap/images/tc2.png";break;}case 4:{if(imgid==0)document.getElementById("img_setup").src="/xrap/images/sz.png";else document.getElementById("img_setup").src="/xrap/images/sz2.png";break;}case 5:{if(imgid==0)document.getElementById("img_help").src="/xrap/images/bz.png";else document.getElementById("img_help").src="/xrap/images/bz2.png";break;}
//case 6:{if(imgid==0)document.getElementById("img_wsp").style.background="url(/xrap/images/wsp-1.png)";else document.getElementById("img_wsp").style.background="url(/xrap/images/wsp-2.png)";break;}
//case 7:{if(imgid==0)document.getElementById("img_yc").style.background="url(/xrap/images/yc-1.png)";else document.getElementById("img_yc").style.background="url(/xrap/images/yc-2.png)";break;}
//case 8:{if(imgid==0)document.getElementById("img_yj").style.background="url(/xrap/images/yj-1.png)";else document.getElementById("img_yj").style.background="url(/xrap/images/yj-2.png)";break;}
}}
var resourcesArray=[];if(resourcesInfo!="")resourcesArray=eval('['+resourcesInfo.replace(/;/g, ',')+']');
js._EXTOVERFLOW=true;
var menuTree=new Ext.tree.TreePanel({region:'west',autoScroll:'auto',animate:false,title:'功能菜单',width:200,minSize:200,maxSize:200,split:true,autoHeight:false,collapsible:true,margins:'0 0 0 0',collapsed:true,rootVisable:true,root:new Ext.tree.TreeNode({id:'root',text:'',draggable:false,expanded:false})});
//20100626
//var d=new dTree('d','/xrap/images','testForm');
var d=null;
//
var _TABMENU,taskBar=0,winTheme='';var rh=js.GetRegHelp();
if(rh.Shell){_TABMENU=eval(rh.GetConfigureItem(rh.GetConfigureList(rh.ReadConfigureFile()),"MENU","TABMENU").value);taskBar=rh.GetTaskBar();winTheme=rh.GetTheme();}
var XPtheme=(!winTheme||winTheme.indexOf("Luna.theme")>0)?true:false;
if(_TABMENU){
d=new dTree('d','/xrap/images','testForm');//20100626
var treeNodes=[];var _reg_exp="\\{[^}{;]+PARENT_ID':'$PID$'[^}{;]+\\}";var rg=_reg_exp.replace("$PID$","-1");var reg = new RegExp(rg,"g");var nodes = resourcesInfo.match(reg);if(nodes.length>0){eval("var ns="+nodes[0]);treeNodes["-1"]=ns;}
(function initnodes(node,ec){rg=_reg_exp.replace("$PID$",node.FUNC_ID);reg=new RegExp(rg,"g");var nodes=resourcesInfo.match(reg);if(nodes&&nodes.length>0){node.Nodes = [];node.Subs = [];var str=",";for(var i=0;i<nodes.length;i++) {eval("var ns="+nodes[i]);node.Nodes[ns.FUNC_ID] = ns;if(str.indexOf(","+ns.FUNC_ID+",")==-1) {node.Subs[node.Subs.length] = ns.FUNC_ID;str = str + ns.FUNC_ID + ",";}if(ec){node.Load=true;initnodes(ns, ec);}}}})(treeNodes["-1"],false);nodes=null;ns=null;var tabs={nodes:[],selected:0,add:_add,change:_changeTag,load:_loadTree,loadpop:_loadPop,pop:_popButton,pophandler:_pophandler,toString:_toString};function _add(o){this.nodes[this.nodes.length]=o;}
function _changeTag(id){try{var _a=null;for(i=0;i<this.nodes.length;i++){_a=document.getElementById("funcTags"+this.nodes[i].id).getElementsByTagName("a")[0];if(this.nodes[i].id==id){_a.className="selectli";_a.getElementsByTagName("span")[0].className="selectspan";this.load(id);}else{_a.className="";_a.getElementsByTagName("span")[0].className="";}}}catch(e){}document.getElementById('ext-gen9').innerHTML=d;menuTree.el.setStyle('z-index', 100);menuTree.myExpand();}
function _pophandler(id){this.change(id);this.menu.style.display='none';}function _loadTree(pid){d.aNodes.length=0;var node=treeNodes["-1"].Nodes[pid];if(!node.Load)initnodes(node,true);loadSubs(treeNodes["-1"],pid);}
function _toString(){var node=null,width=0,nwidth=0;var tabsHtml=new Array();
if(XPtheme){if(taskBar==1)tabsHtml.push('<div class="title"><ul>');else tabsHtml.push('<div class="title"><ul class="ullock">');}else{tabsHtml.push('<div class="title"><ul class="ulclass">');}
for(var i=0;i<this.nodes.length;i++){node=this.nodes[i];nwidth=node.name.length*14+16;if(nwidth>980-width){this.tabscount = this.showindex = i;break;}if(i!=this.selected) tabsHtml.push('<li id="funcTags'+node.id+'"><a href="#" onclick="tabs.change(\''+node.id+'\');this.blur();"><span>'+node.name+'</span></a></li>');else {tabsHtml.push('<li id="funcTags'+node.id+'"><a href="#" onclick="tabs.change(\''+node.id+'\');this.blur();" class="selectli"><span class="selectspan">'+node.name+'</span></a></li>');this.load(node.id);}width += nwidth;}tabsHtml.push('</ul></div>');return tabsHtml.join('');}
function _popButton(){if(this.tabscount){var node=null;var tabsHtml=new Array();
var popclass;if(XPtheme){if(taskBar==1)popclass="pop";else popclass="poplock";}else{popclass="popclass";}
tabsHtml.push('<div class="container"><div class="'+popclass+'"><a id="_menuTabs" href="#" onclick="tabs.loadpop();this.blur();"><span>▼</span></a></div>');tabsHtml.push('</div>');return tabsHtml.join('');} return "&nbsp;";}
function _loadPop(){if(this.showindex&&this.showindex!==-1){if(!this.menu){this.menu=document.createElement("div");this.menu.name = "_menuTabs";this.menu.className="popmenu";this.menu.style.top = 78;this.menu.style.left = document.body.clientWidth - 150;this.menu.onmouseout=function(){if(event.toElement&&event.toElement.name!=="_menuTabs")this.style.display='none';window.event.cancelBubble=false;};document.body.appendChild(this.menu);}var menuHtml = [],node;for(var i=this.tabscount;i<this.nodes.length;i++){node = this.nodes[i];menuHtml.push('<div name="_menuTabs"><ul name="_menuTabs">');menuHtml.push('<li name="_menuTabs" id="funcTags'+node.id+'"><a name="_menuTabs" href="#" onclick="tabs.pophandler(\''+node.id+'\');this.blur();" class="selectli"><span name="_menuTabs" class="selectspan">'+node.name+'</span></a></li>');menuHtml.push('</ul></div>');}this.menu.innerHTML = menuHtml.join('');if(this.menu.offsetHeight>document.body.clientHeight-79){this.menu.style.height = document.body.clientHeight - 80;this.menu.style.overflowY = "auto";}this.showindex = -1;}else{if(this.menu) this.menu.style.display = 'block';}}
function loadSubs(node,sid){if(parseInt(node.PARENT_ID)!==-1){var pid=node.PARENT_ID;pname=node.FUNC_NAME;if(parseInt(pid)===0) {if(parseInt(node.FUNC_TYPE)!==0) {d.add(treeNodes["-1"].FUNC_ID,treeNodes["-1"].PARENT_ID,treeNodes["-1"].FUNC_NAME);} else {pid='-1';pname='陕西省公安机关执法办案与监督信息系统';}}switch(parseInt(node.FUNC_TYPE)){case 0:d.add(node.FUNC_ID,pid,pname);break;case 1:d.add(node.FUNC_ID,pid,pname,"javascript:addTab('"+node.FUNC_ID+"','"+node.FUNC_URL+"','"+pname+"');");break;}}if(node.Nodes) {for(var i=0;i<node.Subs.length;i++){if(sid==node.Subs[i]||sid==-1) {loadSubs(node.Nodes[node.Subs[i]],-1);if(sid!=-1) break;}}}}
ns=treeNodes["-1"].Nodes;sb=treeNodes["-1"].Subs;if(sb.length>=tabs.selected) initnodes(ns[sb[tabs.selected]], true);for(var i=0;i<sb.length;i++){tabs.add({"id":ns[sb[i]].FUNC_ID,"name":ns[sb[i]].FUNC_NAME,"pid":ns[sb[i]].PARENT_ID});}
var topHeight;
if(XPtheme){if(taskBar==1)topHeight=82;else topHeight=85;}else{if(taskBar==1)topHeight=91;else topHeight=92;}
var topPanel=new Ext.Panel({region:'north',height:topHeight,autoHeight:false,collapsible:false,margins:'0 0 0 0',html:'<table border="0" width="100%" background="/xrap/images/bg.jpg" height="64px" cellpadding="0" cellspacing="0">    <tr><td width="60%"><img src="/xrap/images/top1_bg.jpg" height="64px"/></td><td width="30%" align="right"><table background="/xrap/images/top3_bg.jpg"><tr><td valign="middle" height="64px"><br/><A href="###" onmouseover="setImg(5,1);" onmouseout="setImg(5,0);" onclick="userHelp();"><img id="img_help" border="0" src="/xrap/images/help.png" title="显示当前标签窗体帮助"align="right" width="34" height="53"></A></td><td><br/><A href="###" onmouseover="setImg(1,1);" onmouseout="setImg(1,0);" onclick="userReturn();"><img id="img_return" border="0" src="/xrap/images/return.png" align="right"width="34" height="53" title="重新登录系统"></A></td><td><br/><A id="btn_refresh" href="###" onmouseover="setImg(2,1);" onmouseout="setImg(2,0);"onclick="RefreshTab();"><img id="img_refresh" border="0" src="/xrap/images/refresh.png" align="right"width="34" height="53" title="刷新当前标签窗体"></A></td><td><br/><A href="###" onmouseover="setImg(3,1);" onmouseout="setImg(3,0);" onclick="closeTab();"><img id="img_close" border="0" src="/xrap/images/close.png" title="关闭当前标签窗体"align="right" width="34" height="53" /></A></td><td><br/> <A href="###" onmouseover="setImg(4,1);" onmouseout="setImg(4,0);" onclick="userConfig();"><img id="img_setup" border="0" src="/xrap/images/setup.png" align="right"width="34" height="53" title="设置自定义系统参数"></A></td><td><br/><A href="###" onmouseover="setImg(0,1);" onmouseout="setImg(0,0);" onclick="window.close();"><img id="img_exit" border="0" title="退出系统" src="/xrap/images/exit.png"align="right" width="34" height="53"></A></td></tr></table></td></tr></table>'
});
}else{
	_YHZM='/xrap/indexPKI.jsp';
//20100626
  var topHeight;if(XPtheme){if(taskBar==1)topHeight=114;else topHeight=114;}else{if(taskBar==1)topHeight=114;else topHeight=114;}
  var bottomPadding=5+topHeight-62;
  var bodybgurl="/xrap/images/topbg_l.png";
  if(_DWDM.substring(6,8)=="34"){//如果是督察
	  bodybgurl="/xrap/images/dcglptbg.png";
  }
  var topPanel=new Ext.Panel({region:'north',height:topHeight,autoHeight:false,collapsible:false,margins:'0 0 0 0',html:'<table height="114" border="0" width="100%" cellspacing="0" cellpadding="0" background="/xrap/images/topbg.gif"><tr><td width="100%"><div style="width:610px;height:114px;float:left;background:url('+bodybgurl+') no-repeat;"><div id="div_top" style=" position:absolute ;left: 110px;bottom: 10px;color: #fff;font-size: 12px;"></div></div><div style="width:333px;height:114px;float:right;background:url(/xrap/images/topbg_r.png) no-repeat ;padding-top:12px;text-align:right;"><A style="display:inline-block;margin-right:28px;" href="###" onmouseover="setImg(5,1);" onmouseout="setImg(5,0);" onclick="userHelp();"><img id="img_help" border="0" src="/xrap/images/bz.png" title="显示当前标签窗体帮助" width="34" height="53"></A><A style="display:inline-block;margin-right:28px;" id="btn_refresh" href="###" onmouseover="setImg(2,1);" onmouseout="setImg(2,0);"onclick="RefreshTab();"><img id="img_refresh" border="0" src="/xrap/images/sx.png" width="34" height="53" title="刷新当前标签窗体"></A><A style="display:inline-block;margin-right:28px;" href="###" onmouseover="setImg(4,1);" onmouseout="setImg(4,0);" onclick="userConfig();"><img id="img_setup" border="0" src="/xrap/images/sz.png" width="34" height="53" title="设置自定义系统参数"></A><A style="display:inline-block;margin-right:28px;" href="###" onmouseover="setImg(1,1);" onmouseout="setImg(1,0);" onclick="userReturn();"><img id="img_return" border="0" src="/xrap/images/zx.png" width="34" height="53" title="重新登录系统"></A><A style="display:inline-block;margin-right:30px;" href="###" onmouseover="setImg(0,1);" onmouseout="setImg(0,0);" onclick="window.close();"><img id="img_exit" border="0" title="退出系统" src="/xrap/images/tc.png" width="34" height="53"></A><div style="color:#504e4d;padding-top:18px;padding-right:40px; font-size:12px;"> <a href="#" onclick="showform(\'/xrap/zhxt/admin/Brwgzzt.html\',\'个人状态\',400,300)" style="color:#ffffff;font-size:12px;">个人状态</a><a href="#" onclick="initS(409,338,\'box_xgmm\',this,1000,\'divMask\',5,60);" style="color:#ffffff;font-size:12px; margin-left: 38px;">修改密码</a><a href="#" onclick="initS(409,338,\'box_xgqzmm\',this,1000,\'divMask\',5,60);" id="cs123" style="color:#ffffff;font-size:12px; margin-left: 38px;">修改签章密码</a>  </div></td></tr></table>'});
  d=new zTree('d', addTab);
  resourcesArray.length=0;resourcesArray=null;
//
}
//20100915zqh
//var deskurl=(!_YHZM)?'/xrap/page/homePage.jsp':_YHZM;
<!--var deskurl='/xrap/images/sybg.png';-->
var deskurl='<%=basePath%>knowledgebase/gzmh/index.jsp';
if(deskInfo){
    var desk=deskInfo.split(";");
    if(desk.length==1){
        eval("var Desk="+desk[0]);
        var p=Desk["DESK_URL"];
        var isxrap=p.substring(0,4)!='http'?true:false;
        var path=isxrap?js.xrappath+"/"+p:p;
        deskurl=path;
    }else{//_YHID   _DWDM
        //deskurl='/xrap/page/homePage.jsp';
        <!--deskurl='/xrap/images/sybg.png';-->
		deskurl='<%=basePath%>knowledgebase/gzmh/index.jsp';
    }
}
var contentPanel=new Ext.TabPanel({id:'xdesktop',region:'center',enableTabScroll:true,activeTab:0,plugins:new Ext.ux.TabCloseMenu(),margins:'0 0 0 0',items:[{id:'homePage',title:'首页',html:'<iframe style="position:absolute; top:0px" scrolling="auto" id="pagehomePage" frameborder="0" width="100%" height="100%" src="'+deskurl+'?yhid='+_YHID+'&dwdm='+_DWDM+'"></iframe>'}],initEvents:function(){Ext.TabPanel.superclass.initEvents.call(this);this.on('add',this.onAdd,this,{target:this});this.on('remove',this.onRemove,this,{target:this});this.mon(this.strip,'mousedown',this.onStripMouseDown,this);this.mon(this.strip,'contextmenu',this.onStripContextMenu,this);this.mon(this.strip,'dblclick',this.onTitleDbClick,this);},onTitleDbClick:function(e,target,o){var tab=contentPanel.getActiveTab();if(tab.id!='homePage')contentPanel.remove(tab);tab=null;}});
var bottomPanel=new Ext.Panel({region:'south',height:18,title:status,autoHeight:false,collapsible:false,margins:'0 0 0 0',html:'<table border="0" width="100%" height="18"></table>'});
function openPage(pid,pname,caption){contentPanel.remove(contentPanel.getActiveTab());js.__curLoadState=true;addTab(pid,pname,caption);}
function CloseAllTab(){if(!curTab)curTab=contentPanel.getActiveTab();contentPanel.items.each(function(item){if(item.id!="homePage"&&item!=curTab){contentPanel.remove(item);}});curTab=null;}
function TabDestroy(uURL,iID){
	js.__curWindow=window;document.getElementById(uURL).src="";var form=document.getElementById("divpage" + iID);if(form.Destroy)form.Destroy();form.innerText="";form.outerText="";form.outerHTML="";form.innerHTML="";form=null;js.lang.System.prototype.Gc();js.__curWindow = window;
	//xrap_ocx.GC();//20120723 释放内存
}
window.urlid=null;
function addTab(id, urlname, name) {
	if (js._LOGFORM) {
		var urllj = urlname;
		urllj = urllj.replace(/\'/g, "''");
//		execSQL("RZXT", 124, "insert into XT_OPLOG(YFMNAME,YFMLJ,IPDZ,ZWJB,LogInTime,CZR,CZDW) Values ('" + name + "','" + urllj + "','" + GetLocalIPAddress() + "','" + _ZWJB + "','" + getDate(false, 'YYYYMMDDHHMMSSSSS') + "','" + _YHID + "','" + _DWDM + "')");
	}
	js.__curWindow = window;
	if (!js.__curLoadState) return;
	if (urlname == " " || urlname == null) {
		msgbox('窗体未定义！');
		return;
	}
	var xForm = urlname.substring(0, 4) != 'http' ? true: false;
	if (xForm) {
		urlname = xrappath + "/" + urlname;
		if (urlname.indexOf("/gis/") != -1) xForm = false;
	}
	var n = contentPanel.getComponent(id);
	if (!n) {
		var FPageID = "page" + id;
		pageID = FPageID;
		if(xForm){
			var ifg='<iframe scrolling="no" name="'+FPageID+'" id="'+FPageID+'" frameborder="0" width="0" height="0" src="javascript:void(0)"></iframe>';
//			var ifg='<iframe scrolling="no" name="'+FPageID+'" id="'+FPageID+'" frameborder="0" width="100%" height="60%" src="javascript:void(0)"></iframe>';
			n=contentPanel.add({'id':id,'title':name,closable:true,html:ifg});
			n.on('beforedestroy',function(){TabDestroy(FPageID,id);});
			window.urlid="divpage"+id;
//alert(window.urlid);
			contentPanel.setActiveTab(n);
			var parentnode = document.getElementById(FPageID).parentNode;
			var form = document.getElementById(FPageID);
			if (form.src == "javascript:void(0)"){
				var divnode = new js.ui.Div();
				divnode.id = "divpage" + id;
				divnode.style.overflow = "hidden";
				divnode.style.width = "100%";
				divnode.style.height = "100%";
				parentnode.appendChild(divnode);
				form.src=urlname;
			}
		}else{
			var ifg='<iframe scrolling="auto" name="'+FPageID+'" id="'+FPageID+'" frameborder="0" width="100%" height="100%" src="'+urlname+'"></iframe>';
			n=contentPanel.add({'id':id,'title':name,closable:true,html:ifg});
			contentPanel.setActiveTab(n);
		}
	} else contentPanel.setActiveTab(n);
}
/* function addTab(id, urlname, name) {
    var urllj = urlname;
    urllj = urllj.replace(/\'/g, "''");
    if (js._LOGFORM) {
      //  execSQL("RZXT", 124, "insert into XT_OPLOG(YFMNAME,YFMLJ,IPDZ,ZWJB,LogInTime,CZR,CZDW) Values ('" + name + "','" + urllj + "','" + GetLocalIPAddress() + "','" + _ZWJB + "','" + getDate(false, 'YYYYMMDDHHMMSSSSS') + "','" + _YHID + "','" + _DWDM + "')");
		document.getElementById("page" + id);
		execSQL("RZXT", 124, "insert into XT_OPLOG(YFMNAME,YFMLJ,IPDZ,ZWJB,LogInTime,CZR,CZDW) Values ('" + name + "','" + urllj + "','','" + _ZWJB + "','','" + _YHID + "','" + _DWDM + "')");
    }
    js.__curWindow = window;
    if (!js.__curLoadState) return;
    if (urlname == " " || urlname == null) {
        msgbox('窗体未定义！');
        return;
    }
    var xForm = urlname.substring(0, 4) != 'http' ? true: false;
    if (xForm) {
        urlname = xrappath + "/" + urlname;
        if (urlname.indexOf("/gis/") != -1) xForm = false;
    }
    if (urlname.substr(urlname.lastIndexOf("."), 6) == '.htm') xForm = false;
    var n = contentPanel.getComponent(id);
    if (!n) {
        var FPageID = "page" + id;
        pageID = FPageID;
        if (xForm) {
            var ifg = '<iframe scrolling="no" name="' + FPageID + '" id="' + FPageID + '" frameborder="0" width="0" height="0" src="javascript:void(0)"></iframe>';
            n = contentPanel.add({
                'id': id,
                'title': name,
                closable: false,
                html: ifg
            });
            n.on('beforedestroy',
            function() {
                TabDestroy(FPageID, id);
            });
            window.urlid = "divpage" + id;
            contentPanel.setActiveTab(n);
            var parentnode = document.getElementById(FPageID).parentNode;
            var form = document.getElementById(FPageID);
            if (form.src == "javascript:void(0)") {
                var divnode = new js.ui.Div();
                divnode.id = "divpage" + id;
                divnode.style.overflow = "hidden";
                divnode.style.width = "100%";
                divnode.style.height = "100%";
                parentnode.appendChild(divnode);
                form.src = urlname;
            }
        } else {
            var ifg = '<iframe scrolling="auto" name="' + FPageID + '" id="' + FPageID + '" frameborder="0" width="100%" height="100%" src="' + urlname + '"></iframe>';
            n = contentPanel.add({
                'id': id,
                'title': name,
                closable: true,
                html: ifg
            });
            contentPanel.setActiveTab(n);
        }
    } else contentPanel.setActiveTab(n);
    //xrap_ocx.GC();//20120723 释放内存
}*/
function _jcjdjsx(id,urlname,name){var n=contentPanel.getComponent(id);if(n){contentPanel.remove(id);addTab(id,urlname,name);} else addTab(id,urlname,name);}	
function getCurDiv(){if(contentPanel){var tab=contentPanel.getActiveTab();var o=document.getElementById("divpage"+tab.id);return (o ? o : null);}return null;}
function getForm(id){return eval("page"+id);}
//function loadmenu(){document.getElementById('ext-gen9').innerHTML=d;document.body.onbeforeactivate=document.body.onclick=function(){if(!js.__curLoadState)return;js.actend = new Date().getTime();if(js.actstart&&js.actend-js.actstart<50) return;js.__curWindow = js.getCurWindow(this);js.actstart = new Date().getTime();}}
var	id_sound1=null;
var isPlaying=false;
var stopSound=false;
var PlaySound=null;
var time="";
/*20150821
function AddSound(){//播放声音
	swfsound.startSound(id_sound1,"",10000);
	isPlaying=true;
}
*/
//关闭小窗口
function message_close(){
	document.getElementById("message").style.display="none";	
}
function show_webmessage(){
	document.getElementById("message").style.display="block";	
}
function show_webmessage(flag){
	document.getElementById("message").style.display="block";
	if(flag==0){
		//document.getElementById("cshtb").click();
		//document.getElementById("webMessage1").style.display="none";
	}else if(flag==1){
		document.getElementById("ysptb").click();
	}else if(flag==2){
		//document.getElementById("yctx").click();
		//document.getElementById("webMessage2").style.display="none";
	}else if(flag==3){
		//document.getElementById("yjtx").click();
		//document.getElementById("webMessage3").style.display="none";
	}
}
function msg_refresh(){
	loadYcxxMessage(time,0);
	loadYjxxMessage(time,0);
	loadwebimMessage(time,0);
	document.getElementById("msg_refresh").disabled=true;
	document.getElementById("msg_refreshimg").style.filter="gray";
	setTimeout(function(){
		document.getElementById("msg_refresh").disabled=false;
		document.getElementById("msg_refreshimg").style.filter="";
	},5000);
}
function sound_handler(){
	var sound=document.getElementById("sound_handler");
	if(sound.src.indexOf("sound_play.png")!=-1){
		sound.src="/xrap/images/message/sound_stop.png";
		stopSound=true;
		if(isPlaying){
			swfsound.stopSound(id_sound1);
			isPlaying=false;
		}
	}else{
		sound.src="/xrap/images/message/sound_play.png";
		stopSound=false;
		if(PlaySound){
			AddSound();
		}
	}
}
function showYcxx(ycxxzj,ycjb,ckbs,yjzj){
	//alert(ycxxzj);
	//alert(ycxxzj+"-=-=-=-=-=-=-=-"+ycjb+"=-=-=-=-=-=-=-=-=-"+ckbs);
	//alert(yjzj);
	var yczjarr=new Array();
	yczjarr[0]=ycxxzj;
	yczjarr[1]=yjzj;
	if(ckbs!="1"){
		document.getElementById("d"+ycxxzj).innerHTML="已查看";
		js.callService("yczj="+ycxxzj,"/xrap/page/upYcxxbs.jsp");
	}
	var info;
	if(ycjb=="03"){
		info=showform("/xrap/zhxt/zfbajk/Brwycxx_xt.html",yczjarr,980,590,"异常办理");
	}else{
		info=showform("/xrap/zhxt/zfbajk/Brwycxx_clyj.html",yczjarr,980,590,"异常办理");
	} 
	if(info=="gd"){
		loadYcxxMessage(time,msgPageNumber2);
		loadYjxxMessage(time,msgPageNumber2);
	}
}
function showYjxx(ycxxzj,ycjb,ckbs,yjzj){
	//alert(ycxxzj);
	//alert(ycxxzj+"-=-=-=-=-=-=-=-"+ycjb+"=-=-=-=-=-=-=-=-=-"+ckbs);
	var yczjarr=new Array();
	yczjarr[0]=ycxxzj;
	yczjarr[1]=yjzj;
	if(ckbs!="1"){
		document.getElementById("d"+ycxxzj).innerHTML="已查看";
		js.callService("yczj="+ycxxzj,"/xrap/page/upYcxxbs.jsp");
	}
	var info;
	//alert(yjzj);

	info=showform("/xrap/zhxt/zfbajk/Brwyjxx_clyj.html",yczjarr,980,590,"预警信息");

	if(info=="gd"){
		loadYcxxMessage(time,msgPageNumber2);
		loadYjxxMessage(time,msgPageNumber2);
	}
}
//点击待办事项执行handleMessage
function handleMessage(msgurl,msgid,msgtype,devtype){
	//删除通知消息
	if(msgtype=="通知消息"){
		if(msgform("确实要删除这条通知消息吗?", "删除", "确定,取消")){
			var r =wfSetMsgState(msgid,_YHM+":"+_YHXM,1,0,devtype);
			if(r==="0"){
				//if(_QBMESSAGE){
				//	webMessage.removeMessage(msgid,true,"qbMessage,WebMessageTable");//20110711 true 表示不在removeMessage中执行wfSetMsgState
				//}else{
				//	webMessage.removeMessage(msgid,true);//20110711 true 表示不在removeMessage中执行wfSetMsgState
				//}
			 }else if(r==="-1")
				msgalert('不能处理当前任务，请稍后再试！');
			 else{
				msgalert('工作流服务器连接失败');
			 }
		}
		return;
	}else if(msgtype == "qbMsg"){
		if(msgform("确实要删除这条通知消息吗?", "删除", "确定,取消")){
			webMessage.removeMessage(msgid,true,"qbMessage,WebMessageTable");//20110711 true 表示不在removeMessage中执行wfSetMsgState
			var id=msgid.replace("-","");
			addTab(id,msgurl,"情报消息");
		}
		return;
	}
	js._wf_taskid=msgid;
	var popupmessage=typeof(_POPUPMESSAGE)!=="undefined"?_POPUPMESSAGE:false;
	//判断弹出窗体方式，_POPUPMESSAGE=true,showform方式，_POPUPMESSAGE=false,addTab方式
	if(popupmessage){
		if(msgtype!="110消息")
			var p_returnArg=showform(msgurl,null,800,650,"");
		else
			var p_returnArg=showform(_MSGFORM,null,800,650,"");
		/*可以修改窗体增加返回值,窗体可增加下列代码
		window.returnValue=1;*/
		//关闭窗体返回值判断，showform方式有返回值，addtab没有返回值
		if(p_returnArg){
			if(p_returnArg===1){
				if(_QBMESSAGE){
					webMessage.removeMessage(msgid,true,"qbMessage,WebMessageTable");//20110711 true 表示不在removeMessage中执行wfSetMsgState
				}else{
					webMessage.removeMessage(msgid,true);//20110711 true 表示不在removeMessage中执行wfSetMsgState
				}
			}
		}	
	}else{
		if(msgtype=="110消息")msg110=document.getElementById("__"+msgid).title;//接收110消息内容
		var url=msgurl.substr(6).replace(/\\/g,"/");
		var id=msgid.replace("-","");
		if(msgtype!="110消息")
			addTab(id,url,"审批信息");
		else
			addTab(id,_MSGFORM+'?id='+msgid,"110消息");//接收110消息传递消息id
	}
}

var msgTabPanel;
function loadmenu(){
	msgTabPanel = new WebFXTabPane(document.getElementById("tabMain")); //20130822
	var findDiv = document.getElementById('ext-gen9');
	var oFrame = document.createElement("iframe");
	findDiv.parentNode.appendChild(oFrame);
	findDiv.style.zIndex = 1000;
	oFrame.style.position = "absolute";
	oFrame.style.width = findDiv.style.width;
	oFrame.style.height = findDiv.style.height;
	oFrame.style.left = "0px";
	oFrame.style.top = "0px";
	oFrame.style.zIndex = 999;

	findDiv.innerHTML=d;
	//2011052添加
	if(typeof(_WEBMSG)!="undefined"){
		time=typeof(_MSGINTERVAL)!=="undefined"?_MSGINTERVAL:-1;
		//zxh20131009-begin
		loadYcxxMessage(time,0);
		loadYjxxMessage(time,0);
		loadwebimMessage(time,0);//读取待办事项 20131009
		document.getElementById("cshtb").click();
		
		//zxh20131009-end
		//setInterval('loadYcxxMessage(0)',time);//拉消息1分钟读一次数据库
		//setInterval('loadwebimMessage('+time+')',time);//拉消息1分钟读一次数据库
		swfsound.embedSWF('/xrap/sound/swfsound.swf');
		swfsound.onload = function()//声音加载
		{
			id_sound1 = swfsound.loadSound( '/xrap/sound/msg.mp3', streamAndAutoPlay = false );
		}
	}
	
	document.body.onbeforeactivate=document.body.onclick=function(){
		if(!js.__curLoadState)
			return;
		js.actend = new Date().getTime();
		if(js.actstart&&js.actend-js.actstart<50) 
			return;
		js.__curWindow = js.getCurWindow(this);
		js.actstart = new Date().getTime();
	}
	
	setDiv();
	
}
/*
 *20120531yx 退出系统时重置当前用户
 */
function reUserForUserMain(isReOpen){
	js.callService("userId="+_YHID+"&reqType=ajax","/xrap/page/resetUserManager.jsp");
	if(!isReOpen)
		window.close();
}

if(!_TABMENU&&rh.Shell)Ext.onReady(function(){new Ext.Viewport({layout:'border',defaults:{activeItem:0},items:[menuTree,topPanel,contentPanel]});if(_AUTOLOGINFORM){try{js.__curWindow.setTimeout("var d=new js.util.Date();addTab(d.Format('yyyyMMddhhmmssS'),_AUTOLOGINFORM.split('`')[2],_AUTOLOGINFORM.split('`')[1])",1000);}catch(e){}}});
else Ext.onReady(function(){new Ext.Viewport({layout:'border',defaults:{activeItem:0},items:[menuTree,topPanel,contentPanel]});});
window.onbeforeunload=null;
function popMenu(menuDiv,width,rowControlString){var pop=window.createPopup();pop.document.body.innerHTML=menuDiv.innerHTML;var rowObjs=pop.document.body.all[0].rows;var rowCount=rowObjs.length;for(var i=0;i<rowObjs.length;i++){var hide=rowControlString.charAt(i)!='1';if(hide){rowCount--;};rowObjs[i].style.display=(hide)?"none":"";rowObjs[i].cells[0].onmouseover=function(){this.style.background="#FFBC65"; this.style.color="black";};rowObjs[i].cells[0].onmouseout=function(){this.style.background="#F9FBFC";this.style.color="black";};};pop.document.oncontextmenu=function(){return false;};pop.document.onclick=function(){pop.hide();};pop.show(event.clientX-1,event.clientY,width,rowCount*25,document.body);return true;}
function closeCurWin(){contentPanel.remove(curTab);}
function ContextMenu(){var rang=null;if(document.selection)rang=document.selection.createRange();else{rang=js.__curWindow.getSelection();rang.text=rang;}if((rang.text.length>0&&event.srcElement.className&&event.srcElement.className.indexOf("x-tab-strip-text")==-1&&event.srcElement.className.indexOf("node")==-1)||(rang.text.length==0&&(event.srcElement.readOnly==false&&(event.srcElement.type=='text'||event.srcElement.type=='textarea'))))window.event.returnValue=true;else window.event.returnValue=false;}
function MouseDown(){if(event.button==4||event.button==5||event.button==6)msgbox('鼠标滚轮点击无效，请使用鼠标左键操作！');else if(event.button==1&&(window.event.shiftKey||window.event.ctrlKey||window.event.altKey))msgbox('鼠标按键点击无效，请使用鼠标左键操作！');}
//20130822
//zxh20131009-begin
//var ycCsh=true;
function showPageControl(flag){
	if(flag==0){		
		document.getElementById("page_prev1").style.display="none";
		document.getElementById("page_next1").style.display="none";
		document.getElementById("div_msg_count1").style.display="none";
		document.getElementById("page_prev2").style.display="none";
		document.getElementById("page_next2").style.display="none";
		document.getElementById("div_msg_count2").style.display="none";
		document.getElementById("page_prev").style.display="block";
		document.getElementById("page_next").style.display="block";
		document.getElementById("div_msg_count").style.display="block";
		document.getElementById("page_prev3").style.display="none";
		document.getElementById("page_next3").style.display="none";
		document.getElementById("div_msg_count3").style.display="none";	
	}else if(flag==1){
		document.getElementById("page_prev").style.display="none";
		document.getElementById("page_next").style.display="none";
		document.getElementById("div_msg_count").style.display="none";
		document.getElementById("page_prev2").style.display="none";
		document.getElementById("page_next2").style.display="none";
		document.getElementById("div_msg_count2").style.display="none";
		document.getElementById("page_prev1").style.display="block";
		document.getElementById("page_next1").style.display="block";
		document.getElementById("div_msg_count1").style.display="block";
		document.getElementById("page_prev3").style.display="none";
		document.getElementById("page_next3").style.display="none";
		document.getElementById("div_msg_count3").style.display="none";	
	}else if(flag==2){
		document.getElementById("page_prev").style.display="none";
		document.getElementById("page_next").style.display="none";
		document.getElementById("div_msg_count").style.display="none";
		document.getElementById("page_prev1").style.display="none";
		document.getElementById("page_next1").style.display="none";
		document.getElementById("div_msg_count1").style.display="none";
		document.getElementById("page_prev2").style.display="block";
		document.getElementById("page_next2").style.display="block";
		document.getElementById("div_msg_count2").style.display="block";
		document.getElementById("page_prev3").style.display="none";
		document.getElementById("page_next3").style.display="none";
		document.getElementById("div_msg_count3").style.display="none";	
		//if(ycCsh){
			
		//	ycCsh=false;
		//}
	}else{
		document.getElementById("page_prev").style.display="none";
		document.getElementById("page_next").style.display="none";
		document.getElementById("div_msg_count").style.display="none";
		document.getElementById("page_prev1").style.display="none";
		document.getElementById("page_next1").style.display="none";
		document.getElementById("div_msg_count1").style.display="none";
		document.getElementById("page_prev2").style.display="none";
		document.getElementById("page_next2").style.display="none";
		document.getElementById("div_msg_count2").style.display="none";
		document.getElementById("page_prev3").style.display="block";
		document.getElementById("page_next3").style.display="block";
		document.getElementById("div_msg_count3").style.display="block";	
	}
}
//zxh20131009-end
//20130820
var msgPageNumber=0;
var msgPageTotal=1;
function get_prev_page(){
	msgPageNumber--;
	loadwebimMessage(time,msgPageNumber);
	var pagePrev=document.getElementById("page_prev");
	pagePrev.disabled=true;
	pagePrev.style.filter="gray";
	if(msgPageNumber>0){
		var div_msg_count=document.getElementById("div_msg_count");
		if(div_msg_count){
			div_msg_count.innerText=(msgPageNumber+1)+"/"+msgPageTotal;
		}
		setTimeout(function(){pagePrev.disabled=false;pagePrev.style.filter="";},3000);
	}
	var pageNext=document.getElementById("page_next");
	if(pageNext.disabled){
		pageNext.disabled=false;pageNext.style.filter="";
	}
}
function get_next_page(){
	msgPageNumber++;
	loadwebimMessage(time,msgPageNumber);
	var pageNext=document.getElementById("page_next");
	pageNext.disabled=true;
	pageNext.style.filter="gray";
	var div_msg_count=document.getElementById("div_msg_count");
	if(div_msg_count){
		div_msg_count.innerText=(msgPageNumber+1)+"/"+msgPageTotal;
	}
	if((msgPageNumber+1)!=msgPageTotal){
		setTimeout(function(){pageNext.disabled=false;pageNext.style.filter="";},3000);
	}
	var pagePrev=document.getElementById("page_prev");
	if(pagePrev.disabled){
		pagePrev.disabled=false;pagePrev.style.filter="";
	}
}
//
//zxh20131009-begin
var msgPageNumber1=0;
var msgPageTotal1=1;
function get_prev_page1(){
	msgPageNumber1--;
	loadAfterMessage(msgPageNumber1);
	var pagePrev=document.getElementById("page_prev1");
	pagePrev.disabled=true;
	pagePrev.style.filter="gray";
	if(msgPageNumber1>0){
		var div_msg_count=document.getElementById("div_msg_count1");
		if(div_msg_count){
			div_msg_count.innerText=(msgPageNumber1+1)+"/"+msgPageTotal1;
		}
		setTimeout(function(){pagePrev.disabled=false;pagePrev.style.filter="";},3000);
	}
	var pageNext=document.getElementById("page_next1");
	if(pageNext.disabled){
		pageNext.disabled=false;pageNext.style.filter="";
	}
}
function get_next_page1(){
	msgPageNumber1++;
	loadAfterMessage(msgPageNumber1);
	var pageNext=document.getElementById("page_next1");
	pageNext.disabled=true;
	pageNext.style.filter="gray";
	var div_msg_count=document.getElementById("div_msg_count1");
	if(div_msg_count){
		div_msg_count.innerText=(msgPageNumber1+1)+"/"+msgPageTotal1;
	}
	if((msgPageNumber1+1)!=msgPageTotal1){
		setTimeout(function(){pageNext.disabled=false;pageNext.style.filter="";},3000);
	}
	var pagePrev=document.getElementById("page_prev1");
	if(pagePrev.disabled){
		pagePrev.disabled=false;pagePrev.style.filter="";
	}
}
//zxh20131009-end

var msgPageNumber2=0;
var msgPageTotal2=1;
function get_prev_page2(){
	msgPageNumber2--;
	loadYcxxMessage(time,msgPageNumber2);
	var pagePrev=document.getElementById("page_prev2");
	pagePrev.disabled=true;
	pagePrev.style.filter="gray";
	if(msgPageNumber2>0){
		var div_msg_count=document.getElementById("div_msg_count2");
		if(div_msg_count){
			div_msg_count.innerText=(msgPageNumber2+1)+"/"+msgPageTotal2;
		}
		setTimeout(function(){pagePrev.disabled=false;pagePrev.style.filter="";},3000);
	}
	var pageNext=document.getElementById("page_next2");
	if(pageNext.disabled){
		pageNext.disabled=false;pageNext.style.filter="";
	}
}
function get_next_page2(){
	msgPageNumber2++;
	loadYcxxMessage(time,msgPageNumber2);
	var pageNext=document.getElementById("page_next2");
	pageNext.disabled=true;
	pageNext.style.filter="gray";
	var div_msg_count=document.getElementById("div_msg_count2");
	if(div_msg_count){
		div_msg_count.innerText=(msgPageNumber2+1)+"/"+msgPageTotal2;
	}
	if((msgPageNumber2+1)!=msgPageTotal2){
		setTimeout(function(){pageNext.disabled=false;pageNext.style.filter="";},3000);
	}
	var pagePrev=document.getElementById("page_prev2");
	if(pagePrev.disabled){
		pagePrev.disabled=false;pagePrev.style.filter="";
	}
}

var msgPageNumber3=0;
var msgPageTotal3=1;
function get_prev_page3(){
	msgPageNumber3--;
	loadYjxxMessage(time,msgPageNumber3);
	var pagePrev=document.getElementById("page_prev3");
	pagePrev.disabled=true;
	pagePrev.style.filter="gray";
	if(msgPageNumber3>0){
		var div_msg_count=document.getElementById("div_msg_count3");
		if(div_msg_count){
			div_msg_count.innerText=(msgPageNumber3+1)+"/"+msgPageTotal3;
		}
		setTimeout(function(){pagePrev.disabled=false;pagePrev.style.filter="";},3000);
	}
	var pageNext=document.getElementById("page_next3");
	if(pageNext.disabled){
		pageNext.disabled=false;pageNext.style.filter="";
	}
}
function get_next_page3(){
	msgPageNumber3++;
	loadYjxxMessage(time,msgPageNumber3);
	var pageNext=document.getElementById("page_next3");
	pageNext.disabled=true;
	pageNext.style.filter="gray";
	var div_msg_count=document.getElementById("div_msg_count3");
	if(div_msg_count){
		div_msg_count.innerText=(msgPageNumber3+1)+"/"+msgPageTotal3;
	}
	if((msgPageNumber3+1)!=msgPageTotal2){
		setTimeout(function(){pageNext.disabled=false;pageNext.style.filter="";},3000);
	}
	var pagePrev=document.getElementById("page_prev3");
	if(pagePrev.disabled){
		pagePrev.disabled=false;pagePrev.style.filter="";
	}
}

</script>
</head>
<body onLoad="loadmenu()" oncontextmenu="ContextMenu();" onmousedown="MouseDown();" onkeydown="KeyDown();" onbeforeunload="reUserForUserMain(false)">
<div id="loading" align="center" style="position:absolute;z-index:998;display:none;"><img src="/xrap/jcl/res/loading.gif"></div>
<div id="itemMenu" style="display:none"><table border="1" width="100%" height="100%" bgcolor="#F9FBFC" style="border:thin" cellspacing="0"><tr><td  style="cursor:default;border:outset 1;font-family:宋体;font-size:12px;" align="center" onClick="parent.closeCurWin();">&nbsp;关&nbsp;&nbsp;&nbsp;&nbsp;闭&nbsp;</td></tr><tr><td style="cursor:default;border:outset 1;font-family:宋体;font-size:12px;" align="center" onClick="parent.CloseAllTab();">&nbsp;关闭其它&nbsp;</td></tr></table></div>

<div id="webMessageImageDiv" style="z-index:999;position:absolute;top:25px;left:620px;height:60px;width:170px;" >
  <!--
	<table border="0">
	<tr>
	<td style="cursor: hand; text-align:center; border: none;width:50px" valign="bottom" >
	<div id="img_yc" style="background:url(/xrap/images/yc-1.png); width: 50px; height: 46px;border:none;" onMouseOver="setImg(7,1);" onMouseOut="setImg(7,0);" onClick="show_webmessage(2);"><div id="webMessage2" class="messageBsx" style="background:url(/xrap/images/d.png);width: 18px; height: 18px;float:right;margin-right:3px;display:none;" ><div id="ycMsg" style="color: white;font-weight:bold; line-height:18px;font-size:12px"></div></div></div>
	</td>
	<td style="cursor: hand; text-align:center; border: none;width:50px" valign="bottom" >
	<div id="img_yj" style="background:url(/xrap/images/yj-1.png); width: 50px; height: 46px;border:none;" onMouseOver="setImg(8,1);" onMouseOut="setImg(8,0);" onClick="show_webmessage(3);"><div id="webMessage3"  class="messageBsx" style="background:url(/xrap/images/d.png);width: 18px; height: 18px;float:right;margin-right:3px;display:none;" ><div id="yjMsg" style="color: white;font-weight:bold; line-height:18px;font-size:12px"></div></div></div>
	</td>
	<td style="cursor: hand; text-align:center; border: none;width:50px" valign="bottom" >
	<div id="img_wsp" style="background:url(/xrap/images/wsp-1.png); width: 50px; height: 46px;" onMouseOver="setImg(6,1);" onMouseOut="setImg(6,0);" onClick="show_webmessage(0);"><div id="webMessage1"  class="messageBsx" style="background:url(/xrap/images/d.png);width: 18px; height: 18px;float:right;margin-right:3px;display:none;"><div id="wspMsg"  style="color: white;font-weight:bold; line-height:18px;font-size:12px"></div></div></div>
	</td>
	</tr>
	</table>
	-->
	<!--<A style="display:inline-block;margin-right:8px;" href="###" onmouseover="setImg(6,1);" onmouseout="setImg(6,0);" onclick="show_webmessage(1);"><img id="img_wsp" border="0" src="/xrap/images/wsp-1.png" title="帮助1" width="44" height="40"></A><A style="display:inline-block;margin-right:8px;" href="###" onmouseover="setImg(7,1);" onmouseout="setImg(7,0);" onclick="show_webmessage(2);"><img id="img_yc" border="0" src="/xrap/images/yc-1.png" title="帮助2" width="44" height="40"></A><A style="display:inline-block;margin-right:8px;" href="###" onmouseover="setImg(8,1);" onmouseout="setImg(8,0);" onclick="show_webmessage(3);"><img id="img_yj" border="0" src="/xrap/images/yj-1.png" title="帮助3" width="44" height="40"></A>
	onClick="show_webmessage();" <div style="display:none;"><img src="/xrap/images/img.png" id="webMessageImage" style="z-index:998;position:absolute;height:100%;width:114px ;CURSOR:hand;"  /></div>
	<div id="webMessage1" style="z-index:998;position:absolute;height:14px;width:auto; color:#b90000; font-size:12px; margin-top:20px; margin-left:80px;CURSOR:hand;display:none;">未审批0条</div><br/>
	<div id="webMessage2" style="z-index:998;position:absolute;height:14px;width:auto; color:#b90000; font-size:12px;  margin-top:22px; margin-left:80px;CURSOR:hand;display:none;">异常数0条</div>-->
</div>
<div id="message" style="width:600px; height:320px; position:absolute; background:url(/xrap/images/messagebg.png) no-repeat; right:0px; bottom:0px; z-index:996; overflow:hidden;display:none;" >
	<div  style="width:100%; height:98%; position:absolute;" >
		<DIV class=x-window-tc style=" height:36px; margin-right:10px;">
		<div  style="color:#b00; float:left; font-size:16px; font-weight:bold; padding-top:8px; padding-left:26px;" >待办事项</div>
		<div style="CURSOR:hand;position:absolute;right:0px; height:20px;width:20px;padding-top:2px " onClick="message_close();" id="message_close">
			<img src="/xrap/images/gif/cw.gif" style="height:15px;width:15px;"/>
		</div>
		<img src="/xrap/images/message/sound_play.png" style="CURSOR:hand;position:absolute;right:22px; height:20px;width:20px " onClick="sound_handler();" id="sound_handler"/>
		<div style="CURSOR:hand;position:absolute;right:42px; height:20px;width:20px;padding-top:2px " onClick="msg_refresh();" id="msg_refresh">
			<img src="/xrap/images/message/msg_refresh.png" style="height:18px;width:18px "id="msg_refreshimg"/>
		</div>
		<!-- 20130820 --><!-- zxh20131009-begin -->
		<div onClick="get_prev_page();" id="page_prev" disabled=true style="display:block;CURSOR:hand;color:#b00;position:absolute;left:212px;font-size:12px; font-weight:bold; padding-top:8px; padding-left:26px;" >上一页</div>
		<div onClick="get_next_page();" id="page_next" disabled=true style="display:block;CURSOR:hand;color:#b00;position:absolute;left:262px;font-size:14px; font-weight:bold; padding-top:8px; padding-left:26px;" >下一页</div>
		<div id="div_msg_count" style="display:block;color:#b00;position:absolute;left:330px;font-size:12px;font-weight:bold;padding-top:8px;padding-left:26px;"></div>
		
		<div onClick="get_prev_page1();" id="page_prev1" disabled=true style="display:none;CURSOR:hand;color:#b00;position:absolute;left:212px;font-size:12px; font-weight:bold; padding-top:8px; padding-left:26px;" >上一页</div>
		<div onClick="get_next_page1();" id="page_next1" disabled=true style="display:none;CURSOR:hand;color:#b00;position:absolute;left:262px;font-size:12px; font-weight:bold; padding-top:8px; padding-left:26px;" >下一页</div>
		<div id="div_msg_count1" style="display:none;color:#b00;position:absolute;left:330px;font-size:12px;font-weight:bold;padding-top:8px;padding-left:26px;"></div>
		  
		<div onClick="get_prev_page2();" id="page_prev2" disabled=true style="display:none;CURSOR:hand;color:#b00;position:absolute;left:212px;font-size:14px; font-weight:bold; padding-top:8px; padding-left:26px;" >上一页</div>
		<div onClick="get_next_page2();" id="page_next2" disabled=true style="display:none;CURSOR:hand;color:#b00;position:absolute;left:262px;font-size:14px; font-weight:bold; padding-top:8px; padding-left:26px;" >下一页</div>
		<div id="div_msg_count2" style="display:none;color:#b00;position:absolute;left:330px;font-size:14px;font-weight:bold;padding-top:8px;padding-left:26px;"></div>
		
		<div onClick="get_prev_page3();" id="page_prev3" disabled=true style="display:none;CURSOR:hand;color:#b00;position:absolute;left:212px;font-size:14px; font-weight:bold; padding-top:8px; padding-left:26px;" >上一页</div>
		<div onClick="get_next_page3();" id="page_next3" disabled=true style="display:none;CURSOR:hand;color:#b00;position:absolute;left:262px;font-size:14px; font-weight:bold; padding-top:8px; padding-left:26px;" >下一页</div>
		<div id="div_msg_count3" style="display:none;color:#b00;position:absolute;left:330px;font-size:14px;font-weight:bold;padding-top:8px;padding-left:26px;"></div>
		
		<!--  -->
		<SPAN id='title'style="padding-top:6px;position:absolute; padding-left:4px; font-size:12px;  text-align:center; vertical-align;"></SPAN>
		</DIV>
		<div style="width:100%; height:100%; position:absolute; left:0px; top:0px; z-index:996;">
			<div style="position:absolute;top:80px;height:280px;width:99%;left:3px;overflow-x:hidden;">
				<div id="showWEBmessage"  style="text-align:center;width:100%; display:block" >
					<div id="tabMain" class="tab-pane" style="width:570px;">
						
						
						<div id="p3" class="tab-page">
							<h2 id="yctx" class="tab" onClick="showPageControl(2);">异常提醒</h2>
							<div id="ycxxMessage"  style="text-align:center;width:100%;height:228px ;z-index:996;overflow-y:auto;"></div>
						</div>
						<div id="p4" class="tab-page">
							<h2 id="yjtx" class="tab" onClick="showPageControl(3);">预警提醒</h2>
							<div id="yjxxMessage"  style="text-align:center;width:100%;height:228px ;z-index:996;overflow-y:auto;"></div>
						</div>
						<div id="p1" class="tab-page">
						<!-- zxh20131009-begin -->	<h2 class="tab" id="cshtb" onClick="showPageControl(0)">未审批</h2><!-- 20130822 --><!-- zxh20131009-end -->
							<div id="webmessage"  class="WEBmessage" style="text-align:center;width:100%;height:228px ;z-index:996;overflow-y:auto;"></div>
						</div>
						<div id="p2" class="tab-page">
							<!-- zxh20131009-begin --><h2 id="ysptb" class="tab" onClick="showPageControl(1);loadAfterMessage(0)">已审批</h2><!-- 20130822 --><!-- zxh20131009-end -->
							<div id="webafterMessage"  style="text-align:center;width:100%;height:228px ;z-index:996;overflow-y:auto;"></div>
						</div>
					<!--20130104 处理全局变量情报消息为false时不显示情报消息分页；-->
					<script type="text/javascript">
					//if(_QBMESSAGE){
					//	document.write('<div id="p2" class="tab-page">');
					//<!-- zxh20131009-begin -->	
					//document.write('<h2 class="tab" onclick="showPageControl(2)">情报消息</h2>');//20130822<!-- zxh20131009-end -->
				    //document.write('<div id="qbxxMessage"  style="text-align:center;width:100%;height:180px ;z-index:10000;overflow-y:auto;"></div>');
					//	document.write('</div>');
					//}
					</script>
              <div style=" position:absolute; top:5px; right:3px; font-size:12px; color:#b00;">提示：点击【删除】后，信息自动转入《已审批》栏</div>
					</div>
				</div>
				<div id="message_error" style="display:none;color:#ff0000">
				</div>
			</div>
		</div>
	</div>
</div>
<div id="box_xgmm" style="position:absolute; left:50%; display:none; z-index:2000; overflow:hidden; background:url(/xrap/images/xgmm.png) no-repeat;" >
	<div style="padding-left:145px; padding-top:103px;">
    	<input type="password" maxlength="6" id="PWord_old" style="width:228px; height:30px; border:0 none; padding:0; padding-left:6px; padding-top:7px; background:url(/xrap/images/input_bg.png) no-repeat; display:inline-block; margin-bottom:18px;"><br />
    	<input type="password" maxlength="6" id="PWord_new" style="width:228px; height:30px; border:0 none; padding:0; padding-left:6px; padding-top:7px; background:url(/xrap/images/input_bg.png) no-repeat; display:inline-block; margin-bottom:18px;"><br />
    	<input type="password" maxlength="6" id="PWord_renew" style="width:228px; height:30px; border:0 none; padding:0; padding-left:6px; padding-top:7px; background:url(/xrap/images/input_bg.png) no-repeat;">
    </div>
    <div style="padding-top:20px; padding-left:55px;">
    	<input type="button" style="width:120px; height:35px; border:0 none; padding:0; cursor:pointer; background:url(/xrap/images/btn_qd.png) no-repeat;" onClick="Button_submitonclick();">
        <input type="button" style="width:120px; height:35px; border:0 none; padding:0; cursor:pointer; display:inline-block; margin-left:50px; background:url(/xrap/images/btn_qx.png) no-repeat;" onClick="eventBtn.click();">
    </div>
</div>
<div id="box_xgqzmm" style="position:absolute; width:409px; height:338px; left:50%; top:-1000px; display:block; z-index:2000; overflow:hidden;" class="ccc" >
	<!--<iframe frameborder="0" allowtransparency="true" src="http://192.168.1.11:8090/Seal/index!modifyPwdPage.do" scrolling="no" style="padding:0; margin:0; width:409px; height:338px;"></iframe>-->
</div>
<div id="divMask" style=" display:none; position:absolute; top:0; left:0; width:100%; cursor:pointer; background:#000; filter:Alpha(Opacity=0); color:#fff; z-index:1000;"></div>
<object style='LEFT: 0px; TOP: 0px' id="xrap_ocx" classid="clsid:1BFD57CC-E4CB-4CCB-9504-F16A4DFF726A" codebase="/xrap/ocx/xrapform.ocx#version=12,7,23,1" width="0" height="0" align=center hspace=0 vspace=0> </object>
</body>
<script type="text/javascript">
var newObj;
var newSpeed;
var maxOpacity;
var changeN=0;
var changeHeight;
var eventBtn;
var eventS;
var time;
var maskObj;
function initS(w,h,objId,objBtn,t,bg,speed,mp){
	Button_resetonclick();
	var docH = document.body.clientHeight;
	maxOpacity = mp;
	newSpeed = speed;
	maskObj = _(bg);
	maskObj.style.height = docH;
	bgShow();
	eventS = objBtn.onclick;
	objBtn.onclick = "";
	eventBtn = objBtn;
	newObj = _(objId);
	newObj.style.width = w;
	newObj.style.height = h;
	newObj.style.marginLeft = -w/2;
	changeHeight = (changeN==0)?docH/2 - h/2 + h:-(docH/2 - h/2 +h);
	newObj.style.top =(changeN!=0)? (docH - h)/2: -h;
	time = (changeN!=0)? t/2 : t;
	newObj.style.display = 'block';
	if(changeN!=0)transition(newObj,{field:'top',begin:parseFloat(newObj.style.top),change:changeHeight,duration:time,ease:tween.easeInBack})
	else transition(newObj,{field:'top',begin:parseFloat(newObj.style.top),change:changeHeight,duration:time,ease:tween.spring})
	if(changeN!=0)changeN=0;else changeN++;
}
function bgShow()
{
if (maskObj.style.display==""){setObjClose();}
else{
maskObj.filters.alpha.opacity=0;
maskObj.style.display='';
setObjOpen();
}
}
function setObjOpen()
{
maskObj.filters.alpha.opacity+=newSpeed;
if (maskObj.filters.alpha.opacity<maxOpacity) setTimeout('setObjOpen()',20);
}

function setObjClose()
{
maskObj.filters.alpha.opacity-=newSpeed;
if (maskObj.filters.alpha.opacity>0) {
setTimeout('setObjClose()',20);}
else {maskObj.style.display="none";}
}
var tween = {
	easeInBack: function(pos){
		var s = 1.70158;
		return (pos)*pos*((s+1)*pos - s);
	},
	spring: function(pos) {
		return 1 - (Math.cos(pos * 4.5 * Math.PI) * Math.exp(-pos * 6));
	}
}
var _ = function(id){
	return document.getElementById(id);
}
var transition = function(el){
	//el.style.position = "absolute";
	var options = arguments[1] || {},
	begin =  options.begin,//开始位置
	change = options.change,//变化量
	duration = options.duration || 500,//缓动效果持续时间
	field = options.field,//必须指定，基本上对top,left,width,height这个属性进行设置
	ftp = options.ftp || 50,
	onEnd = options.onEnd || function(){},
	ease = options.ease,//要使用的缓动公式
	end = begin + change,//结束位置
	startTime = new Date().getTime();//开始执行的时间
	(function(){
		setTimeout(function(){
			var newTime = new Date().getTime(),//当前帧开始的时间
			timestamp = newTime - startTime,//逝去时间
			delta = ease(timestamp / duration);
			el.style[field] = Math.ceil(begin + delta * change) + "px";
			if(duration <= timestamp){
				el.style[field] = end + "px";
				onEnd();
				if(changeN==0)el.style.display = 'none';
				eventBtn.onclick = eventS;
				el.onclick=function(ev){ev = ev || window.event; ev.cancelBubble = true;}
				document.documentElement.onclick=function(ev){if(changeHeight>0)eventBtn.click();}
				document.documentElement.onkeydown=function(){if(event.keyCode==27&&changeHeight>0)eventBtn.click();};
			}else{
				setTimeout(arguments.callee,1000/ftp);
			}
		},1000/ftp)
	})()
}
</script>
</html>
<script language="Javascript">
function Button_resetonclick(){
    _("PWord_old").value='';
	_("PWord_new").value='';
	_("PWord_renew").value='';
}
function Button_submitonclick(){
    var message;
	var oldpwd=PWord_old.value;
	var newpwd=PWord_new.value;
	var renew=PWord_renew.value;
	message=(oldpwd=='')?"请输入你原来的密码！":(newpwd=='')?"请输入您的新密码！":(renew=='')?"请您确认输入您的新密码！":"正确";
	if(message=="正确")
	{
		message=(newpwd.length<7)?"正确":"密码长度不能超过六位！"
	}
	if(message=="正确")
	{
		message=(newpwd==renew)?"正确":"两次输入的新密码不相符！"
	}
	if(message!="正确"){
		msgbox(message);
		return false;
	}
	//DS_user.Close();
	//DS_user.SqlWhere="user_id='"+_YHID+"'"
	//DS_user.Open();
	//var a=DS_user.GetField('口令');
	var v=setPassword('system',1,_YHM,newpwd,oldpwd);
	eventBtn.click();
	return true;
}
//20140612 启用退出系统时登录日志功能
window.onunload = function(){
window.location.href=encodeURI('/xrap/page/logout.jsp?ex=1&yhm='+_YHM+'&yhxm='+encodeurl(_YHXM)+'&dwdm='+_DWDM+'&dwmc='+encodeurl(_DWMC));
}

</script>
