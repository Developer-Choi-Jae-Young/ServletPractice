package model.vo;

public class Exhibit {
	private String title;
	private String period;
	private String location;
	
	public Exhibit() {}
	public Exhibit(String title, String period, String location) {
		this.title = title;
		this.period = period;
		this.location = location;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPeriod() {
		return period;
	}
	public void setPeriod(String period) {
		this.period = period;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	@Override
	public String toString() {
		return "Exhibit [title=" + title + ", period=" + period + ", location=" + location + "]";
	}	
}