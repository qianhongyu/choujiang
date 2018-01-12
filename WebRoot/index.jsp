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
    <title>入库申请</title> 

<link href="css/base.css" rel="stylesheet">
<link rel="stylesheet" href="custom/uimaker/easyui.css">
<link rel="stylesheet" type="text/css" href="custom/uimaker/icon.css">
<link rel="stylesheet" href="css/providers1.css">
</head> 
<body>
    <div class="container">
       <table id="dg" style="width:100%;height:529px" title="数据导入申请" data-options="
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
                    <th field="preItemName" width="20%">预售项目名称</th>
                    <th field="itemName" width="10%">主项目</th>
                    <th field="itemSite" width="20%">项目坐落</th>
                    <th field="district" width="15%">行政区</th>
                    <th field="createTime" width="10%">创建时间</th>
                    <th field="applyState" width="15%">项目状态</th>
                    <th field="applyState" width="20%">楼盘名称</th>
                </tr>
            </thead>
        </table>
      <div id="tb" style="padding:0 30px;">
       <!-- <div class="conditions">
            <span class="con-span">供应商编码: </span><input class="easyui-textbox" type="text" name="code" style="width:166px;height:35px;line-height:35px;"></input>
            <span class="con-span">供应商名称: </span><input class="easyui-textbox" type="text" name="name" style="width:166px;height:35px;line-height:35px;"></input>
            <a href="#" class="easyui-linkbutton" iconCls="icon-search" data-options="selected:true">查询</a>
            <a href="#" class="easyui-linkbutton" iconCls="icon-reload">重置</a>
            <a href="#" class="easyui-linkbutton more" iconCls="icon-more">更多</a>
        </div>
        <div class="conditions hide">
            <span class="con-span">合同名称: </span><input class="easyui-textbox" type="text" name="code" style="width:166px;height:35px;line-height:35px;"></input>
            <span class="con-span">合同模板: </span><select class="easyui-combobox" name="language" style="height:35px;width:166px;"><option>合同模板1</option></select>
            <span class="con-span">供应商编码: </span><input class="easyui-textbox" type="text" name="code" style="width:166px;height:35px;line-height:35px;"></input>
            <span class="con-span">供应商: </span><input class="easyui-textbox" type="text" name="code" style="width:166px;height:35px;line-height:35px;"></input>
        </div>
        <div class="conditions hide">
            <span class="con-span">公司代码: </span><input class="easyui-textbox" type="text" name="code" style="width:166px;height:35px;line-height:35px;"></input>
            <span class="con-span">公司名称: </span><select class="easyui-combobox" name="language" style="height:35px;width:166px;"><option>公司名称</option></select>
            <span class="con-span">发布时间: </span><input class="easyui-datetimebox" style="width:166px;height:35px;line-height:35px;">
            <span class="con-span">合同状态: </span><input class="easyui-textbox" type="text" name="code" style="width:166px;height:35px;line-height:35px;"></input>
        </div>-->
        <div class="opt-buttons">
            <a href="#" class="easyui-linkbutton" data-options="selected:true">新建项目</a>
            <a href="#" class="easyui-linkbutton">删除项目</a>
            <a href="#" class="easyui-linkbutton">完善项目信息</a>
            <a href="#" class="easyui-linkbutton">提交</a>
            <a href="#" class="easyui-linkbutton">打印申请书</a>
            <a href="#" class="easyui-linkbutton">退出</a>
        </div>
      </div>
    </div>
    <script type="text/javascript" src="custom/jquery.min.js"></script>
    <script type="text/javascript" src="custom/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="custom/easyui-lang-zh_CN.js"></script>


    <script type="text/javascript">
	 	$(function(){
            getData();
        }); 
		//用户信息
		function getData(){
			$.ajax({
				type : "post",
				url :"ToPresellAction/getSaleItemInfoList.action",
				/* traditional :true, */
				data:{
					
				},
				datatype:"json",
				success : function(data) {
					$('#dg').datagrid({data:data.list}).datagrid('clientPaging');
				},
				error : function(data) {
					errorTip.html("请求处理返回的数据有误");
	
				}
			});
		}
	</script>
     
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

        $(".more").click(function(){
            $(this).closest(".conditions").siblings().toggleClass("hide");
        });
    </script>
</body> 
</html>
