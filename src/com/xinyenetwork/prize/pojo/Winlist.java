package com.xinyenetwork.prize.pojo;

public class Winlist {
       
	private Integer id;
	private Integer prizeId;
	private String winnersName;
	private String winnersPh;
	
	public Winlist(){}
	public Winlist(Integer id, Integer prizeId, String winnersName,
			String winnersPh) {
		super();
		this.id = id;
		this.prizeId = prizeId;
		this.winnersName = winnersName;
		this.winnersPh = winnersPh;
	}
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getPrizeId() {
		return prizeId;
	}
	public void setPrizeId(Integer prizeId) {
		this.prizeId = prizeId;
	}
	public String getWinnersName() {
		return winnersName;
	}
	public void setWinnersName(String winnersName) {
		this.winnersName = winnersName;
	}
	public String getWinnersPh() {
		return winnersPh;
	}
	public void setWinnersPh(String winnersPh) {
		this.winnersPh = winnersPh;
	}
	
	
}
