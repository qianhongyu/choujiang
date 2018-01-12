<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html> 
<html lang="en"> 
<head> 
    <meta charset="utf-8"> 
    <meta name="viewport" content="width=device-width, initial-scale=1"> 
    <title>合同变更</title> 

<link href="css/base.css" rel="stylesheet">
<link rel="stylesheet" href="custom/uimaker/easyui.css">
<link rel="stylesheet" type="text/css" href="custom/uimaker/icon.css">
<link rel="stylesheet" href="css/providers.css">

<link href="css/process.css" rel="stylesheet">
<!--<link href="js/umeditor/themes/default/css/umeditor.css" type="text/css" rel="stylesheet">-->
<style>
	.easyui-linkbutton,.easyui-textbox{
		margin:0px 0px 6px 10px;
	}
</style>
</head> 
<body>
    <div class="container"><!--554-->
       <table id="dg" style="width:100%;height:499px;" title="当前批次下所有合同变更申请" data-options="
                rownumbers:true,
                singleSelect:false,
                autoRowHeight:false,
                pagination:true,
                fitColumns:true,
                striped:true,
                checkOnSelect:false,
                selectOnCheck:false,
                collapsible:true,
                toolbar:'#tb',
                pageSize:10">
            <thead>
                <tr>
                	<th field="code" width="10%">编号</th>
                    <th field="name" width="20%">开发公司名称</th>
                    <th field="level" width="15%">购房人姓名</th>
                    <th field="provide" width="10%">合同流水号</th>
                    <th field="full" width="15%">坐落</th>
                    <th field="state" width="10%">申请状态</th>
                    <th field="note" width="15%">备注</th>
                </tr>
            </thead>
        </table>
      <!--<div id="tb" style="padding:0 30px;">
        <a href="#" class="easyui-linkbutton">查看</a>
      </div>-->
    </div>
    <script type="text/javascript" src="custom/jquery.min.js"></script>
    <script type="text/javascript" src="custom/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="custom/easyui-lang-zh_CN.js"></script>

    <!--<script type="text/javascript" charset="utf-8" src="js/umeditor/umeditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="js/umeditor/umeditor.min.js"></script>
    <script type="text/javascript" src="js/umeditor/lang/zh-cn/zh-cn.js"></script>-->

    
    <script type="text/javascript">
            (function($){
            function pagerFilter(data){
                if ($.isArray(data)){   // is array
                    data = {
                        total: data.length,
                        rows: data
                    }
                }
                var target = this;
                var dg = $(target);
                var state = dg.data('datagrid');
                var opts = dg.datagrid('options');
                if (!state.allRows){
                    state.allRows = (data.rows);
                }
                if (!opts.remoteSort && opts.sortName){
                    var names = opts.sortName.split(',');
                    var orders = opts.sortOrder.split(',');
                    state.allRows.sort(function(r1,r2){
                        var r = 0;
                        for(var i=0; i<names.length; i++){
                            var sn = names[i];
                            var so = orders[i];
                            var col = $(target).datagrid('getColumnOption', sn);
                            var sortFunc = col.sorter || function(a,b){
                                return a==b ? 0 : (a>b?1:-1);
                            };
                            r = sortFunc(r1[sn], r2[sn]) * (so=='asc'?1:-1);
                            if (r != 0){
                                return r;
                            }
                        }
                        return r;
                    });
                }
                var start = (opts.pageNumber-1)*parseInt(opts.pageSize);
                var end = start + parseInt(opts.pageSize);
                data.rows = state.allRows.slice(start, end);
                return data;
            }

            var loadDataMethod = $.fn.datagrid.methods.loadData;
            var deleteRowMethod = $.fn.datagrid.methods.deleteRow;
            $.extend($.fn.datagrid.methods, {
                clientPaging: function(jq){
                    return jq.each(function(){
                        var dg = $(this);
                        var state = dg.data('datagrid');
                        var opts = state.options;
                        opts.loadFilter = pagerFilter;
                        var onBeforeLoad = opts.onBeforeLoad;
                        opts.onBeforeLoad = function(param){
                            state.allRows = null;
                            return onBeforeLoad.call(this, param);
                        }
                        var pager = dg.datagrid('getPager');
                        pager.pagination({
                            onSelectPage:function(pageNum, pageSize){
                                opts.pageNumber = pageNum;
                                opts.pageSize = pageSize;
                                pager.pagination('refresh',{
                                    pageNumber:pageNum,
                                    pageSize:pageSize
                                });
                                dg.datagrid('loadData',state.allRows);
                            }
                        });
                        $(this).datagrid('loadData', state.data);
                        if (opts.url){
                            $(this).datagrid('reload');
                        }
                    });
                },
                loadData: function(jq, data){
                    jq.each(function(){
                        $(this).data('datagrid').allRows = null;
                    });
                    return loadDataMethod.call($.fn.datagrid.methods, jq, data);
                },
                deleteRow: function(jq, index){
                    return jq.each(function(){
                        var row = $(this).datagrid('getRows')[index];
                        deleteRowMethod.call($.fn.datagrid.methods, $(this), index);
                        var state = $(this).data('datagrid');
                        if (state.options.loadFilter == pagerFilter){
                            for(var i=0; i<state.allRows.length; i++){
                                if (state.allRows[i] == row){
                                    state.allRows.splice(i,1);
                                    break;
                                }
                            }
                            $(this).datagrid('loadData', state.allRows);
                        }
                    });
                },
                getAllRows: function(jq){
                    return jq.data('datagrid').allRows;
                }
            })
        })(jQuery);

        function getData(){
            var rows = [];
            for(var i=1; i<=800; i++){
                rows.push({                	
                	code: '-',
                    name: '徐州新盛绿城置业发展有限公司',
                    level: '紫薇公馆',
                    provide: '11115153115416',
                    full: '金山南路9号',
                    status:'-',
                    note:'-'
                });
            }
            return rows;
        }
        
        $(function(){
            $('#dg').datagrid({data:getData()}).datagrid('clientPaging');
        }); 
        
        
        
        $(function(){
            $("tr").click(function(){
        		/*alert($(this).children('td').eq(3).html());*/
        		$('#dlg').dialog('open');
        	});
        });
    </script>
    <div id="dlg" class="easyui-dialog" title="业务日志查看" data-options="closed:true" style="width:720px;height:490px;padding:10px;">
		<div class="time-line">
			<div class="time-item date">
				<div class="content-left first">
					<span>2016-04-25</span>
					<label><span class="dot"></span><i class="line"></i></label>
				</div>
			</div>
			<div class="time-item time">
				<div class="content-left">
					<span>15:58:34</span>
					<label><i class="line"></i><span class="dot"></span></label>
				</div>
				<div class="content-right">
					<span class="left-arrow"></span>
					<div class="detail-outer">
						<div class="detail">
							<div>
								<span class="name">占立中</span>
								<label>[买方]</label>
								<span class="status">发布</span>
							</div>
							<div>
								<span class="name">占立中</span>
								<label>[买方]</label>
								<span class="status">发布</span>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="time-item time important">
				<div class="content-left">
					<span>17:00:21</span>
					<label><i class="line"></i><span class="dot"></span></label>
				</div>
				<div class="content-right">
					<span class="left-arrow"></span>
					<div class="detail-outer">
						<div class="detail">
							<div>
								<span class="name">纪相东</span>
								<label>[供方]</label>
								<span class="status">石家庄华能电力有限公司。报价已发布，报价单号：<span class="order">121568215782</span></span>
							</div>
							<div>
								<span class="name">纪相东</span>
								<label>[供方]</label>
								<span class="status">石家庄华能电力有限公司。报价已发布，报价单号：<span class="order">121568215782</span></span>
							</div>
							<div>
								<span class="name">纪相东</span>
								<label>[供方]</label>
								<span class="status">石家庄华能电力有限公司。报价已发布，报价单号：<span class="order">121568215782</span></span>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="time-item date">
				<div class="content-left">
					<span>2016-04-26</span>
					<label><span class="dot"></span><i class="line"></i></label>
				</div>
			</div>
			<div class="time-item time">
				<div class="content-left">
					<span>09:21:14</span>
					<label><i class="line"></i><span class="dot"></span></label>
				</div>
				<div class="content-right">
					<span class="left-arrow"></span>
					<div class="detail-outer">
						<div class="detail">
							<div>
								<span class="name">占立中</span>
								<label>[买方]</label>
								<span class="status">发布</span>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="time-item last">
				<div class="content-left">
					<label><i class="line"></i><span class="dot"></span></label>
				</div>
			</div>
		</div>
	</div>
</body> 
</html>
