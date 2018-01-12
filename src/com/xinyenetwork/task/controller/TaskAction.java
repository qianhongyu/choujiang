package com.xinyenetwork.task.controller;

import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.hssf.util.CellRangeAddress;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xinyenetwork.task.biz.ITaskBiz;
import com.xinyenetwork.task.pojo.Task;

@RequestMapping("/TaskAction")
@Controller()
public class TaskAction {
	@Autowired
	private ITaskBiz iTaskBiz;

	/**
	 * 添加排课任务
	 * 
	 * @param request
	 * @param map
	 * @return
	 */

	@RequestMapping("/toAddTask")
	@ResponseBody
	public Map toAddTask(HttpServletRequest request) {
		Map map = new HashMap();
		String guid = UUID.randomUUID().toString();
		String userguid = "1111111111";
		String name = request.getParameter("name");
		String term = request.getParameter("term");
		Task task = new Task();
		task.setGuid(guid);
		task.setUserguid(userguid);
		task.setName(name);
		task.setTerm(term);
		Boolean err = iTaskBiz.toAddTask(task);
		map.put("err", err);
		map.put("guid", guid);
		map.put("msg", "添加排课任务失败");
		return map;

	}

	/**
	 * 获取排课任务列表
	 * 
	 * @return
	 */
	@RequestMapping("/getTaskList")
	@ResponseBody
	public Map getTaskList(HttpServletRequest request) {
		Map map = new HashMap();
		List<Task> info = new ArrayList<Task>();
		info = iTaskBiz.getTaskList();
		request.getSession().setAttribute("info", info);
		map.put("list", info);
		System.out.println(info.size() + "==================");
		return map;
	}

	/**
	 * @return
	 * @throws IOException
	 */
	@RequestMapping("/createXls")
	@ResponseBody
	public Map createXls(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		
		List<Task> info = new ArrayList<Task>();
		info = iTaskBiz.getTaskList();
		// 创建HSSFWorkbook对象(excel的文档对象)
		HSSFWorkbook wkb = new HSSFWorkbook();
		// 建立新的sheet对象（excel的表单）
		HSSFSheet sheet = wkb.createSheet("排课任务表");
		// 在sheet里创建第一行，参数为行索引(excel的行)，可以是0～65535之间的任何一个
		HSSFRow row1 = sheet.createRow(0);
		// 创建单元格（excel的单元格，参数为列索引，可以是0～255之间的任何一个
		HSSFCell cell = row1.createCell(0);
		// 设置单元格内容
		cell.setCellValue("所有排课任务一览表");
		// 合并单元格CellRangeAddress构造参数依次表示起始行，截至行，起始列， 截至列
		sheet.addMergedRegion(new CellRangeAddress(0, 0, 0, 4));
		// 在sheet里创建第二行
		HSSFRow row2 = sheet.createRow(1);
		// 创建单元格并设置单元格内容
		row2.createCell(0).setCellValue("排课任务名称");
		row2.createCell(1).setCellValue("学期");
		row2.createCell(2).setCellValue("节次");
		row2.createCell(3).setCellValue("上课时间");
		row2.createCell(4).setCellValue("状态");
		// 在sheet里创建第三行
		for(int i=0;i<info.size();i++){
			HSSFRow row3 = sheet.createRow(i + 2);
			row3.createCell(0).setCellValue(info.get(i).getName());
			row3.createCell(1).setCellValue(info.get(i).getTerm());
			row3.createCell(2).setCellValue(info.get(i).getMorning() + info.get(i).getAfternoon() + info.get(i).getNight());
			row3.createCell(3).setCellValue(info.get(i).getModifydatetime());
			if(info.get(i).getIsnot() == 0){
				row3.createCell(4).setCellValue("未排课");
			}else{
				row3.createCell(4).setCellValue("已排课");
			}
		}
//		HSSFRow row3 = sheet.createRow(2);
//		row3.createCell(0).setCellValue(info.get(i));
//		row3.createCell(1).setCellValue("As178");
//		row3.createCell(2).setCellValue(87);
//		row3.createCell(3).setCellValue(78);
//		row3.createCell(4).setCellValue(78);
		// .....省略部分代码

		// 输出Excel文件
		OutputStream output = response.getOutputStream();
		response.reset();
		response.setHeader("Content-disposition",
				"attachment; filename=details.xls");
		response.setContentType("application/msexcel");
		wkb.write(output);
		output.close();
		return null;
		// Map map = new HashMap();
		// List<Task> info = new ArrayList<Task>();
		// info = iTaskBiz.getTaskList();
		// request.getSession().setAttribute("info", info);
		// map.put("list", info);
		// System.out.println(info.size() + "==================");
		// return map;
	}
	// @RequestMapping(value = "/getTaskList", method = {RequestMethod.GET,
	// RequestMethod.POST})
	// @ResponseBody
	// public Object getTaskList() {
	// List<Task> list1;
	// System.out.println("123456");
	// list1 = iTaskBiz.getTaskList();
	// System.out.println(list1.size() + "==================排课任务表");
	// return list1;
	// }

	// 获取排课任务列表
	// @RequestMapping("getTaskList")
	// public String getTaskList(String userguid, HttpServletRequest request,
	// HttpServletResponse response,Map<String, Object> map){
	// userguid = "1111111111";
	// ArrayList<Task> tasklist = iTaskBiz.getTaskList(userguid);
	// Gson gson=new Gson();
	// String str = gson.toJson(tasklist);
	// System.out.println("str:"+str);
	// PrintWriter out = null;
	// try {
	// out = response.getWriter();
	//
	// out.write(str);
	// } catch (IOException e) {
	// // TODO Auto-generated catch block
	// e.printStackTrace();
	// } finally {
	// out.flush();
	// out.close();
	// }
	// // JSONArray ja = JSONArray.
	// // //用response向前台写数据
	// // response.getWriter().write(ja.toString());
	// // response.getWriter().flush();
	// // response.getWriter().close();
	// return null;
	// }

	/**
	 * 删除排课任务
	 * 
	 * @param request
	 * @param map
	 * @return
	 */

	// @RequestMapping("toDelTask")
	// public String toDelTask(HttpServletRequest request,
	// HttpServletResponse response, Boolean loginFlag,
	// Map<String, Object> map) {
	// // 此处生成token用来防重复提交
	// String token = UUID.randomUUID().toString();
	// request.getSession().setAttribute("token", token);
	// Gson gson=new Gson();
	// String token_Str = gson.toJson(token);
	// System.out.println("token_Str:"+token_Str);
	// PrintWriter out = null;
	// try {
	// out = response.getWriter();
	//
	// out.write(token);
	// } catch (IOException e) {
	// // TODO Auto-generated catch block
	// e.printStackTrace();
	// } finally {
	// out.flush();
	// out.close();
	// }
	//
	//
	// return null;

	// }

}