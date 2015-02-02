



















if(typeof doyoo=='undefined' || !doyoo){
var d_genId=function(){
    var id ='',ids='0123456789abcdef';
    for(var i=0;i<34;i++){ id+=ids.charAt(Math.floor(Math.random()*16));  }  return id;
};
var doyoo={
env:{
secure:false,
mon:'http://m8101.talk99.cn/monitor',
chat:'http://ali919c.talk99.cn/chat',
file:'http://static.soperson.com/131221',
compId:10012811,
confId:10013391,
vId:d_genId(),
lang:'',
fixFlash:1,
subComp:0,
_mark:'118389f15586469134ed94a788a025c76db6dc3540aaf426e126a79545f9fafcca1e38e950ba608d'
}

, monParam:{
index:1,

title:'\u5728\u7ebf\u5ba2\u670d',
text:'\u5c0a\u656c\u7684\u5ba2\u6237\u60a8\u597d\uff0c\u6b22\u8fce\u5149\u4e34\u6211\u516c\u53f8\u7f51\u7ad9\uff01\u6211\u662f\u4eca\u5929\u7684\u5728\u7ebf\u503c\u73ed\u5ba2\u670d\uff0c\u70b9\u51fb\u201c\u5f00\u59cb\u4ea4\u8c08\u201d\u5373\u53ef\u4e0e\u6211\u5bf9\u8bdd',
auto:-1,
group:'10014328',
start:'00:00',
end:'24:00',
mask:false,
status:false,
fx:0,
mini:1,
pos:1,
offShow:1,
loop:0,
autoHide:0,
hidePanel:0,
miniStyle:1,
showPhone:0,
monHideStatus:[0,0,0],
monShowOnly:''
}


, panelParam:{
category:'icon',
position:1,
vertical:180,
horizon:5


,mode:1,
target:'10014328',
online:'http://dzhedu.cn/images/1105/imgtalk99.jpg',
offline:'http://dzhedu.cn/images/1105/imgtalk99.jpg',
width:140,
height:303,
status:0,
closable:1,
regions:[{type:"0",l:"20",t:"140",w:"70",h:"20",bk:"http://dzhedu.cn/images/1105/qqi.jpg",v:"1610136346"},{type:"0",l:"20",t:"180",w:"70",h:"20",bk:"http://dzhedu.cn/images/1105/qqi.jpg",v:"1692011487"},{type:"0",l:"20",t:"220",w:"70",h:"20",bk:"http://dzhedu.cn/images/1105/qqi.jpg",v:"1209063892"},{type:"2",l:"10",t:"90",w:"110",h:"30",bk:"http://dzhedu.cn/images/1105/jzs.jpg",v:"10014328"}],
collapse:0



}


,msgParam:{
    title:'\u6b22\u8fce\u7ed9\u6211\u4eec\u7559\u8a00',
    index:3,
    pos:1,
    group:10014328,
    delay:2
}


};

if(typeof talk99Init == 'function'){
    talk99Init(doyoo);
}


document.write('<div id="doyoo_panel"></div>');


document.write('<div id="doyoo_monitor"></div>');


document.write('<div id="talk99_message"></div>')

document.write('<div id="doyoo_share" style="display:none;"></div>');
document.write('<lin'+'k rel="stylesheet" type="text/css" href="http://static.soperson.com/131221/talk99.css?140610"></li'+'nk>');
document.write('<scr'+'ipt type="text/javascript" src="http://static.soperson.com/131221/talk99.js?141104" charset="utf-8"></scr'+'ipt>');

}

