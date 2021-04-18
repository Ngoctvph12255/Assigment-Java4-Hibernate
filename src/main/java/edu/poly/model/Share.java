package edu.poly.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQuery;
import javax.persistence.Table;


/**
 * The persistent class for the shares database table.
 * 
 */
@Entity
@Table(name="shares")
@NamedQuery(name="Share.findAll", query="SELECT s FROM Share s")
public class Share implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="ShaerId")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int shaerId;

	@Column(name="Emails")
	private String emails;

	@Column(name="ShareDate")
	private Date shareDate;

	
	@ManyToOne
	@JoinColumn(name="Username")
	private User user;

	
	@ManyToOne
	@JoinColumn(name="VideoId")
	private Video video;

	public Share() {
	}

	public int getShaerId() {
		return this.shaerId;
	}

	public void setShaerId(int shaerId) {
		this.shaerId = shaerId;
	}

	public String getEmails() {
		return this.emails;
	}

	public void setEmails(String emails) {
		this.emails = emails;
	}

	public Date getShareDate() {
		return this.shareDate;
	}

	public void setShareDate(Date shareDate) {
		this.shareDate = shareDate;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Video getVideo() {
		return this.video;
	}

	public void setVideo(Video video) {
		this.video = video;
	}

}