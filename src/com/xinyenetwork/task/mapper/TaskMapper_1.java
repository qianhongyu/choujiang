package com.xinyenetwork.task.mapper;

import java.util.ArrayList;
import java.util.List;

import com.xinyenetwork.task.pojo.Task;

public interface TaskMapper {
	
	// 添加排课任务
	Boolean toAddTask(Task task);

	// 获取排课任务列表
	List<Task> getTaskList();

	// 删除排课任务
	Boolean toDelTask(Task task);
	
}
