package edu.poly.domain;

import java.util.Date;

public class FavoriteReport {
	public String getVideoTitle() {
		return videoTitle;
	}
	public void setVideoTitle(String videoTitle) {
		this.videoTitle = videoTitle;
	}
	public Long getFavoriteCount() {
		return favoriteCount;
	}
	public void setFavoriteCount(Long favoriteCount) {
		this.favoriteCount = favoriteCount;
	}
	public Date getNewsDate() {
		return newsDate;
	}
	public void setNewsDate(Date newsDate) {
		this.newsDate = newsDate;
	}
	public Date getOldestDate() {
		return oldestDate;
	}
	public void setOldestDate(Date oldestDate) {
		this.oldestDate = oldestDate;
	}
	public String videoTitle;
	private Long favoriteCount;
	private Date newsDate;
	private Date oldestDate;
	public FavoriteReport(String videoTitle, Long favoriteCount, Date newsDate, Date oldestDate) {
		
		this.videoTitle = videoTitle;
		this.favoriteCount = favoriteCount;
		this.newsDate = newsDate;
		this.oldestDate = oldestDate;
	}
	public FavoriteReport() {
		
	}
}
