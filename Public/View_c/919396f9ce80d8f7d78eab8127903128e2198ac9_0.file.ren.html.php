<?php
/* Smarty version 3.1.30, created on 2018-01-13 17:48:29
  from "D:\phpStudy\WWW\php\Movie\movie\Application\Home\View\Ren\ren.html" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5a59d5ed648df0_87666414',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '919396f9ce80d8f7d78eab8127903128e2198ac9' => 
    array (
      0 => 'D:\\phpStudy\\WWW\\php\\Movie\\movie\\Application\\Home\\View\\Ren\\ren.html',
      1 => 1515720226,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5a59d5ed648df0_87666414 (Smarty_Internal_Template $_smarty_tpl) {
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>人员详情</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
		<link rel="stylesheet" type="text/css" href="Public/css/public.css"/>
		<link rel="stylesheet" type="text/css" href="Public/bootstrap/css/bootstrap.min.css">
		<?php echo '<script'; ?>
 type="text/javascript" src="Public/bootstrap/js/jquery-1.12.3.min.js"><?php echo '</script'; ?>
>
		<?php echo '<script'; ?>
 type="text/javascript" src="Public/bootstrap/js/bootstrap.min.js"><?php echo '</script'; ?>
>

		<style type="text/css">
		/*头部简介*/
		.top{
			width: 100%;
			padding: 5% 5% 0 5%;
			background: red;
			display: inline-block;
		}
		.top_left{
			width: 30%;
			float: left;
			margin-right: 5%;
		}
		.top_left img{
			width: 100%;
		}
		.top_right{
			color: #fff;
			display: flow-root;
		}
		.top_right h3{
			margin: 0;
		}
		.top_right p{
			width: 70%;
		}
		
		/*影人简介*/
		.content{
			width: 100%;
			padding: 0 5%;
		}
		.content h4{
			font-weight: bold;
		}
		.content div{
			width: 100%;
		} 
		.content div p{
			display: -webkit-box;
			-webkit-box-orient: vertical;
			-webkit-line-clamp: 3;
			overflow: hidden;
		}
		.zhankai{
			width: 100%;
			text-align: center;
			font-size: 1.5em;
			color: #000;
		}
		.shouqi{
			display: none;
			width: 100%;
			text-align: center;
			font-size: 1.5em;
			color: #000;
		}

		</style>
	</head>
	<body>
		<!--头部简介-->
		<div class="top">
			<div class="top_left">
				<img src="<?php echo $_smarty_tpl->tpl_vars['list']->value['photo'];?>
"/>
			</div>
			<div class="top_right">
				<h3><?php echo $_smarty_tpl->tpl_vars['list']->value["name"];?>
</h3>
				<p><?php echo $_smarty_tpl->tpl_vars['list']->value["english"];?>
</p>
				<p><?php echo $_smarty_tpl->tpl_vars['list']->value["date"];?>
</p>
				<p><?php echo $_smarty_tpl->tpl_vars['list']->value["city"];?>
</p>
				<p>导演 编剧</p>
			</div>
		</div>
		
		<!--影人简介-->
		<div class="content">
			<h3>影人简介</h3>
			<div >
				<p><?php echo $_smarty_tpl->tpl_vars['list']->value["abstract"];?>
</p>
				<div class="zhankai">展开</div>
				<div class="shouqi">收起</div>
			</div>
		</div>
		
	<?php echo '<script'; ?>
>
		$(".zhankai").click(function(){
			$(".content p").css("-webkit-line-clamp","1000");
			$(".zhankai").hide();
			$(".shouqi").show();
		});
		$(".shouqi").click(function(){
			$(".content div p").css("-webkit-line-clamp","3");
			$(".shouqi").hide();
			$(".zhankai").show();
		});
	<?php echo '</script'; ?>
>	
		
	</body>
</html>
<?php }
}
