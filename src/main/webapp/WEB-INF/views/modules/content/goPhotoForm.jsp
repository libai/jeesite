<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>图片管理</title>
	<meta name="decorator" content="default"/>
	<link href="${ctxStatic}/common/gome.css" type="text/css" rel="stylesheet" />
	<script type="text/javascript" src="${ctxStatic}/common/plupload.full.min.js"></script>

	<link href="${ctxStatic}/common/ijcrop/jquery.Jcrop.min.css" type="text/css" rel="stylesheet" />
	<script type="text/javascript" src="${ctxStatic}/common/ijcrop/jquery.Jcrop.min.js"></script>

</head>
<body>
	<ul class="nav nav-tabs">
		<li><a href="${ctx}/content/goPhoto/">图片列表</a></li>
		<li class="active"><a href="${ctx}/content/goPhoto/form?id=${goPhoto.id}">图片<shiro:hasPermission name="content:goPhoto:edit">${not empty goPhoto.id?'修改':'添加'}</shiro:hasPermission><shiro:lacksPermission name="content:goPhoto:edit">查看</shiro:lacksPermission></a></li>
	</ul><br/>
	<form:form id="inputForm" modelAttribute="goPhoto" action="${ctx}/content/goPhoto/save" method="post" class="form-horizontal">
		<div class="upload">
	<div class="base_infm">
    	<div class="base_infm_title">基本信息</div>
        <div class="base_infm_con">
        	<div class="base_infm_ty">内容类型</div>
            <div class="base_infm_bd">
            <select><option>潮电</option></select>
            </div>
            <div class="base_infm_ty mgtop10">用户名</div>
            <div class="base_infm_bd">
            <input type="text" /><span class="base_user_zs">输入的用户名必须为已有用户，一期灌水数据时需事先生成灌水用户</span></div>
        </div>
    </div>
    <div class="base_content mgtop10">
    	<div class="base_infm_title">内容</div>
        <div class="base_infm_con">
        	<div class="base_infm_ty">图片</div>
            <div class="base_infm_bd" id="container"><input type="button" value="上传图片文件" id="pickfiles"><span class="base_user_zs" id="upload_info"></span></div>
        
            <div class="base_area_img_con">
            	<div class="base_area_img"><img  id="uploadImg"/></div>
            	<div class="upload_btnd" style="display:none;text-align: left;">
	            	<div class="inline-labels" style="margin-top:3px">
					    <label>X<input type="text" name="x" id="x" class="cut-params" style="width:50px"></label>
					    <label>Y<input type="text" name="y" id="y" class="cut-params" style="width:50px"></label>
					    <label>W<input type="text" name="w" id="w" class="cut-params" style="width:50px"></label>
					    <label>H<input type="text" name="h" id="h" class="cut-params" style="width:50px"></label>
					</div>
	            	
	            	
	            	<div ><button class="btn btn-primary" id="next">下一步</button></div>
                 </div>
                  
                  <!-- 
               
                <div class="base_tag_stysp"><span class="base_tag_ico"></span><a class="base_tag_con">商品标签</a></div>
                <div class="base_tag_stywb"><span class="base_tag_icowb"></span><a class="base_tag_con">文本标签</a></div>
                
                 -->
            </div>
            
            <div class="base_infm_ty mgtop30">此刻心情</div>
            <div class="base_infm_bd">
            	<textarea class="textare" style="height:100px;"></textarea>
                <div class="base_are_zs">140/140</div>
            </div>
            <div ><button class="btn btn-primary" id="next">提交保存</button></div>
            
            
        </div>
    </div>
</div>
</form:form>

<script type="text/javascript">
// 图片上传
var uploader = new plupload.Uploader({
	runtimes : 'html5,flash,silverlight,html4',
	browse_button : 'pickfiles', // you can pass an id...
	container: document.getElementById('container'), // ... or DOM Element itself
	url : '${ctx}/content/goPhoto/upload?upload=1',
	flash_swf_url : '${ctxStatic}/common/Moxie.swf',
	silverlight_xap_url : '${ctxStatic}/common/Moxie.xap',
	
	filters : {
		max_file_size : '10mb',
		mime_types: [
			{title : "Image files", extensions : "jpg,gif,png"}
		]
	},
	init: {
		PostInit: function() {
			$('#filelist').html('');
		},

		FilesAdded: function(up, files) {
			plupload.each(files, function(file) {
				$("#upload_info").text("开始上传...");
			});
			uploader.start();
			return false;
		},

		UploadProgress: function(up, file) {
			$("#upload_info").text("正在上传。。。"+file.percent+"%");
			//document.getElementById(file.id).getElementsByTagName('b')[0].innerHTML = '<span>' + file.percent + "%</span>";
		},
		
		Error: function(up, err) {
			$("#upload_info").text("上传错误 :" + err.code + ": " + err.message);
			//document.getElementById('console').appendChild(document.createTextNode("\nError #" + err.code + ": " + err.message));
		},
		FileUploaded:function(up, file, res){
			if(res.status ==200){
				var response = $.parseJSON(res.response);
		
				$("#uploadImg").attr("src", "/jeesite/"+response.fileUrl).unbind("load").load(function(){
					$('#uploadImg').Jcrop({
					      onChange:   showCoords,
					      onSelect:   showCoords,
					      onRelease:  clearCoords
					    },function(){
					      jcrop_api = this;
					    });
				});
				
			}else{
				$("#upload_info").text("上传错误:未知错误");
			}
		},
		UploadComplete:function(up, file){
			$("#upload_info").text("");
			$(".upload_btnd").show();
			
			
		}
	}
	
});

//裁剪控制
function showCoords(c){
    $('#x').val(c.x);
    $('#y').val(c.y);
    $('#w').val(c.w);
    $('#h').val(c.h);
 };
 
 function clearCoords()
 {
   $('.cut-params').val('');
 };
 $('.cut-params').on('change', function(){
     var x = $('#x').val(),
     y = $('#y').val(),
     w = $('#w').val(),
     h = $('#h').val(),
     x2 = x+w,
     y2 = y+h;
 	jcrop_api.setSelect([x, y, x2, y2]);
});

uploader.init();
</script>
<script type="text/javascript">
//流程控制
$("#next").click(function(){
	var html = '<img  id="uploadImg" src="${ctx}/content/goPhoto/cut/?x=0&y=0&w=200&h=200"/>';
	$(".base_area_img").html(html);
	return false;
});

</script>
<script type="text/javascript">
//标记操作


</script>
</body>
</html>