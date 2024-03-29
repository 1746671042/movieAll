
{extends file='index.tpl'}
{block name=title}
    影片管理
{/block} 

{block name=content}
{*    添加影片*}
    <div  id="addMovie" style="display: none;width:100%;height:100%;background:rgba(0,0,0,.5);position: absolute;top: 0px;left:0px; z-index:999;">
        <!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->

			<div  class="modal">

				<div class="modal-header">
					<button class="close" type="button" onclick="$('#addMovie').hide()"></button>
					<h3>添加影片</h3>

				</div>

				<div class="modal-body">

					<form action="#" class="form-horizontal" id="skillMoive">
                                                <div class="control-group">
                                                        <label class="control-label">名称：</label>

                                                        <div class="controls">
                                                                <input type="text" placeholder="请填写电影名称" class="m-wrap small" name="name">
                                                        </div>
                                                </div>
                                                 <div class="control-group">
                                                        <label class="control-label">英文名称：</label>

                                                        <div class="controls">
                                                                <input type="text" placeholder="请填写电影英文名称" class="m-wrap small" name="english">
                                                        </div>
                                                </div>
                                                <div class="control-group">
                                                        <label class="control-label">导演：</label>
                                                        <div class="controls">
                                                                <input type="text" placeholder="请填写导演名称" class="m-wrap medium" name="director">
                                                        </div>
                                                </div>
                                               <div class="control-group">
                                                        <label class="control-label">主演：</label>
                                                        <div class="controls">
                                                                <input type="text" placeholder="请填写主演名称" class="m-wrap medium" name="performer_id">
                                                        </div>
                                                </div>
                                                <div class="control-group">
                                                        <label class="control-label">上映时间：</label>
                                                        <div class="controls">
                                                                <input type="text" placeholder="请填写上映时间" class="m-wrap medium" name="show">
                                                        </div>
                                                </div>
                                            <div class="control-group">
                                                        <label class="control-label">时长：</label>
                                                        <div class="controls">
                                                                <input type="text" placeholder="请填写影片时长" class="m-wrap medium" name="duration">
                                                        </div>
                                                </div><div class="control-group">
                                                        <label class="control-label">电影图标：</label>
                                                        <div class="controls" >
                                                            <img src="" width="100" style="display:none" id="upload_img"/>
                                                            <button type="button" id="upload">上传电影logo</button>
                                                            <input type="file" value="" name="myfile" class="m-wrap small" style="display:none;"/>
                                                            <input type="hidden" value="" id="upload_url" name="url"/>
                                                        </div>
                                                </div><div class="control-group">
                                                        <label class="control-label">状态：</label>
                                                        <div class="controls">
                                                                <input type="text" placeholder="请填写电影状态" class="m-wrap medium" name="state">
                                                        </div>
                                                </div><div class="control-group">
                                                        <label class="control-label">简介：</label>
                                                        <div class="controls">
                                                            <textarea placeholder="请填写电影简介" class="m-wrap medium" name="abstract" style="height:200px;"></textarea> 
                                                        </div>
                                                </div>
                                                <div class="control-group">
                                                        <label class="control-label">语言：</label>
                                                        <div class="controls">
                                                                <input type="text" placeholder="请填写语言" class="m-wrap medium" name="language">
                                                        </div>
                                                </div>
                                                <div class="form-actions" style="text-align: center;padding-left:0px;background-color:white;">
                                                        <span class="help-block" style="color:red; display: nonel;" id="help"></span>
                                                        <button type="button" class="btn blue" id="saveMovie"><i class="icon-ok"></i> 添加</button>
                                                </div>
                                        </form>

				</div>

			</div>

			<!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->

    </div>
    
{*    修改影片*}
    <div  id="updateMovie" style="display: none;width:100%;height:100%;background:rgba(0,0,0,.5);position: absolute;top: 0px;left:0px; z-index:999;">
        <!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->

			<div  class="modal">

				<div class="modal-header">

					<button class="close" type="button" onclick="$('#updateMovie').hide()"></button>

					<h3>修改影片</h3>

				</div>

				<div class="modal-body">

					<form action="#" class="form-horizontal" id="upMoiveForm">
                                            <input type="hidden"  name="id" value=""/>
                                                <div class="control-group">
                                                        <label class="control-label">名称：</label>
                                                        <div class="controls">
                                                            <input type="text" placeholder="请填写电影名称" class="m-wrap small" name="name" value="">
                                                        </div>
                                                </div>
                                                 <div class="control-group">
                                                        <label class="control-label">英文名称：</label>

                                                        <div class="controls">
                                                                <input type="text" placeholder="请填写电影英文名称" class="m-wrap small" name="english" value="">
                                                        </div>
                                                </div>
                                                <div class="control-group">
                                                        <label class="control-label">导演：</label>
                                                        <div class="controls">
                                                                <input type="text" placeholder="请填写导演名称" class="m-wrap medium" name="director" value="">
                                                        </div>
                                                </div>
                                               <div class="control-group">
                                                        <label class="control-label">主演：</label>
                                                        <div class="controls">
                                                                <input type="text" placeholder="请填写主演名称" class="m-wrap medium" name="performer_id" value="">
                                                        </div>
                                                </div>
                                                <div class="control-group">
                                                        <label class="control-label">上映时间：</label>
                                                        <div class="controls">
                                                                <input type="text" placeholder="请填写上映时间" class="m-wrap medium" name="show" value="">
                                                        </div>
                                                </div>
                                            <div class="control-group">
                                                        <label class="control-label">时长：</label>
                                                        <div class="controls">
                                                                <input type="text" placeholder="请填写影片时长" class="m-wrap medium" name="duration" value="">
                                                        </div>
                                                </div><div class="control-group">
                                                        <label class="control-label">电影图标：</label>
                                                        <div class="controls">
                                                                <input type="text" placeholder="请填写电影图标" class="m-wrap medium" name="photo" value="">
                                                        </div>
                                                </div><div class="control-group">
                                                        <label class="control-label">状态：</label>
                                                        <div class="controls">
                                                                <input type="text" placeholder="请填写电影状态" class="m-wrap medium" name="state" value="">
                                                        </div>
                                                </div><div class="control-group">
                                                        <label class="control-label">简介：</label>
                                                        <div class="controls">
                                                            <textarea placeholder="请填写电影简介" class="m-wrap medium" name="abstract" style="height:200px;" value=""></textarea> 
                                                        </div>
                                                </div>
                                                <div class="control-group">
                                                        <label class="control-label">语言：</label>
                                                        <div class="controls">
                                                                <input type="text" placeholder="请填写语言" class="m-wrap medium" name="language" value="">
                                                        </div>
                                                </div>
                                                <div class="form-actions" style="text-align: center;padding-left:0px;background-color:white;">
                                                        <span class="help-block" style="color:red; display: nonel;" id="help"></span>
                                                        <button type="button" class="btn blue" id="saveUpMovie"><i class="icon-ok"></i> 修改</button>
                                                </div>
                                        </form>

				</div>

			</div>

			<!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->

    </div>
    
    
     <div class="page-container row-fluid">


		<!-- BEGIN PAGE -->
			
			<!-- BEGIN PAGE CONTAINER-->        

			<div class="container-fluid">

				<!-- BEGIN PAGE HEADER-->

				<div class="row-fluid">

					<div class="span12">

						<!-- BEGIN STYLE CUSTOMIZER -->

						<div class="color-panel hidden-phone">

							<div class="color-mode-icons icon-color"></div>

							<div class="color-mode-icons icon-color-close"></div>

							<div class="color-mode">

								<p>THEME COLOR</p>

								<ul class="inline">

									<li class="color-black current color-default" data-style="default"></li>

									<li class="color-blue" data-style="blue"></li>

									<li class="color-brown" data-style="brown"></li>

									<li class="color-purple" data-style="purple"></li>

									<li class="color-grey" data-style="grey"></li>

									<li class="color-white color-light" data-style="light"></li>

								</ul>

								<label>

									<span>Layout</span>

									<select class="layout-option m-wrap small">

										<option value="fluid" selected>Fluid</option>

										<option value="boxed">Boxed</option>

									</select>

								</label>

								<label>

									<span>Header</span>

									<select class="header-option m-wrap small">

										<option value="fixed" selected>Fixed</option>

										<option value="default">Default</option>

									</select>

								</label>

								<label>

									<span>Sidebar</span>

									<select class="sidebar-option m-wrap small">

										<option value="fixed">Fixed</option>

										<option value="default" selected>Default</option>

									</select>

								</label>

								<label>

									<span>Footer</span>

									<select class="footer-option m-wrap small">

										<option value="fixed">Fixed</option>

										<option value="default" selected>Default</option>

									</select>

								</label>

							</div>

						</div>

						<!-- END BEGIN STYLE CUSTOMIZER -->  

						<!-- BEGIN PAGE TITLE & BREADCRUMB-->

						<h3 class="page-title">
							管理员列表
						</h3>

						<ul class="breadcrumb">

							<li>

								<i class="icon-home"></i>

								<a href="index.html">后台管理</a> 

								<i class="icon-angle-right"></i>

							</li>

							<li>

								<a href="#">影片管理</a>

								<i class="icon-angle-right"></i>

							</li>

							<li><a href="#">影片列表</a></li>

						</ul>

						<!-- END PAGE TITLE & BREADCRUMB-->

					</div>

				</div>

				<!-- END PAGE HEADER-->

				<!-- BEGIN PAGE CONTENT-->

				<div class="row-fluid">

					<div class="span12">

						<!-- BEGIN EXAMPLE TABLE PORTLET-->

						<div class="portlet box blue">

							<div class="portlet-title">

								<div class="caption"><i class="icon-edit"></i>Editable Table</div>

								<div class="tools">

									<a href="javascript:;" class="collapse"></a>

									<a href="#portlet-config" data-toggle="modal" class="config"></a>

									<a href="javascript:;" class="reload"></a>

									<a href="javascript:;" class="remove"></a>

								</div>

							</div>

							<div class="portlet-body">

								<div class="clearfix">

									<div class="btn-group">

										<button id="sample_editable_1_new" class="btn green adds" onclick="$('#addMovie').show()">

										添加 <i class="icon-plus"></i>

										</button>

									</div>

									

								</div>

								<table class="table table-striped table-hover table-bordered" id="sample_editable_1">

									<thead>
										<tr>
											<th>id</th>
											<th>名称</th>
                                                                                        <th>英文名称</th>
											<th>导演名称</th>
											<th>主演</th>
                                                                                        <th>上映时间</th>
                                                                                        <th>播放时长(分钟)</th>
                                                                                        <th>影片logo</th>
                                                                                        <th>影片状态</th>
                                                                                        <th>简介</th>
                                                                                        <th>语言</th>
                                                                                        <th>操作</th>
										</tr>
									</thead>
									<tbody>
                                                                            {foreach from=$movieList item=v}
										<tr class="">
											<td>{$v.id}</td>
                                                                                        <td>{$v.name}</td>
                                                                                        <td style="width:100px;">{$v.english}</td>
											<td>{$v.director}</td>
											<td>{$v.performer_id}</td>
											<td>{$v.shows}</td>     
                                                                                        <td>{$v.duration}</td>     
                                                                                        <td ><img src="{$v.photo}" style="width: 90px;"/></td>     
                                                                                        <td>{if $v.state ==0}未上映{else}已上映{/if}</td>     
                                                                                        <td style="width:300px;">{$v.abstract}</td> 
                                                                                        <td>{$v.language}</td> 
                                                                                        <td><button movieId="{$v.id}" class="update"><a href="javascript:;">修改</a></button><button movieId="{$v.id}" class="delete">删除</button></td>
										</tr>
                                                                            {foreachelse}
                                                                                <tr>
                                                                                    <td>暂无数据</td>
                                                                                </tr>
                                                                            {/foreach}
									</tbody>
								</table>
							</div>
						</div>
						<!-- END EXAMPLE TABLE PORTLET-->
					</div>
				<!-- END PAGE CONTENT -->

			</div>

			<!-- END PAGE CONTAINER-->

		</div>

		<!-- END PAGE -->

	</div>
 {/block}
 
 
 {block name=js}
     
     <script>
         {literal}
//上传电影logo
        $("#upload").click(function(){
            $("input[type='file']").click();
        })
        $("#upload_img").click(function(){
            $("input[type='file']").click();
        })
        
        $("input[type='file']").change(function(){
            var fd = new FormData();
            fd.append("myfile",$("input[type='file']").get(0).files[0]);
            $.ajax({
                type:"post",
                url:"index.php?m=Admin&c=Index&a=uplogo",
                data:fd,
                processData:false,
                contentType:false,
                success:function(e){
                    e=$.parseJSON(e);
                    if(e.code ==100){
                        alert("上传失败");
                    }else{
                        $("#upload_img").attr("src",e.data);
                        $("#upload_url").val(e.data);
                        $("#upload").hide();
                        $("#upload_img").show();
                    }
                }
            })
        })
        
             
             
             
             
             
         $("#saveMovie").click(function(){
                $.ajax({
                    type:"get",
                    url:"index.php?m=Admin&c=Index&a=addMovie",
                    data:$("#skillMoive").serializeArray(),
                    success:function(data){
                        data = $.parseJSON(data);
                        console.log(data);
                        if(data.code==200){
                            alert("添加成功！");
                            history.go(0);
                        }else{
                            alert("添加失败,请重试！");
                            history.go(0);
                        }
                    }
                });
            
         })
         
         //修改
         $(".update").click(function(){
             var id = $(this).attr("movieId");
             $("#updateMovie input[name='id']").val(id);
             
             var movieId =$("#updateMovie input[name='id']").val();
             $.ajax({
                    type:"get",
                    url:"index.php?m=Admin&c=Index&a=upMovies&id="+id,
                    success:function(data){
                        data = $.parseJSON(data);
                        console.log(data);
                        if(data.code==200){
                           $("#updateMovie input").each(function(){
                                var name = $(this).attr("name");
                                $(this).val(data.data[name]);      
                            })
                            $("#updateMovie").show();
                        }else{
                            history.go(0);
                        }
                    }
                }) 
         })
         
         //提交修改后的电影信息
          $("#saveUpMovie").click(function(){
                $.ajax({
                    type:"get",
                    url:"index.php?m=Admin&c=Index&a=saveUpMovie",
                    data:$("#upMoiveForm").serializeArray(),
                    success:function(data){
                        data = $.parseJSON(data);
                        console.log(data);
                        if(data.code==200){
                            alert("修改成功！");
                            history.go(0);
                        }else{
                            alert("修改失败,请重试！");
                            
                        }
                    }
                });
            
         })
         
         
         
         
         
         // //删除电影  
         $(".delete").click(function(){
             var id = $(this).attr("movieId");
                  $.ajax({
                    type:"get",
                    url:"index.php?m=Admin&c=Index&a=deleteMovie&movieId="+id,
                    success:function(data){
                        data = $.parseJSON(data);
                        console.log(data);
                        if(data.code==200){
                            alert(data.message);
                            history.go(0);
                        }else{
                            alert(data.message);
                            history.go(0);
                        }
                    }
                })
         })

     
         
          {/literal}
     </script>
 
 {/block}