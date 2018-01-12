package com.xinyenetwork.task.pojo;

public class Task {
	
	private String guid;
	private String userguid;//用户id
	private String name;//排课任务名称
	private String term;//学期
	private Integer days;//每周
	private Integer morning;//上午
	private Integer afternoon;//下午
	private Integer night;//晚上
	private String modelpath;//模版地址
	private Integer isnot;//是否排课
	private String createdatetime;//创建时间
	private String modifydatetime;//修改时间
	
	public Task() {
		// TODO 自动生成的构造函数存根
	}

	public Task(String guid, String userguid, String name, String term,
			Integer days, Integer morning, Integer afternoon, Integer night,
			String modelpath, Integer isnot, String createdatetime,
			String modifydatetime) {
		super();
		this.guid = guid;
		this.userguid = userguid;
		this.name = name;
		this.term = term;
		this.days = days;
		this.morning = morning;
		this.afternoon = afternoon;
		this.night = night;
		this.modelpath = modelpath;
		this.isnot = isnot;
		this.createdatetime = createdatetime;
		this.modifydatetime = modifydatetime;
	}

	public String getGuid() {
		return guid;
	}

	public void setGuid(String guid) {
		this.guid = guid;
	}

	public String getUserguid() {
		return userguid;
	}

	public void setUserguid(String userguid) {
		this.userguid = userguid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTerm() {
		return term;
	}

	public void setTerm(String term) {
		this.term = term;
	}

	public Integer getDays() {
		return days;
	}

	public void setDays(Integer days) {
		this.days = days;
	}

	public Integer getMorning() {
		return morning;
	}

	public void setMorning(Integer morning) {
		this.morning = morning;
	}

	public Integer getAfternoon() {
		return afternoon;
	}

	public void setAfternoon(Integer afternoon) {
		this.afternoon = afternoon;
	}

	public Integer getNight() {
		return night;
	}

	public void setNight(Integer night) {
		this.night = night;
	}

	public String getModelpath() {
		return modelpath;
	}

	public void setModelpath(String modelpath) {
		this.modelpath = modelpath;
	}

	public Integer getIsnot() {
		return isnot;
	}

	public void setIsnot(Integer isnot) {
		this.isnot = isnot;
	}

	public String getCreatedatetime() {
		return createdatetime;
	}

	public void setCreatedatetime(String createdatetime) {
		this.createdatetime = createdatetime;
	}

	public String getModifydatetime() {
		return modifydatetime;
	}

	public void setModifydatetime(String modifydatetime) {
		this.modifydatetime = modifydatetime;
	}

}
