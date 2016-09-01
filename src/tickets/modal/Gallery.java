package tickets.modal;

public class Gallery {

	private Integer id;
	private Integer event_id;
	private String gallery_title;
	private String gallery_img;
	private String 	datetime_added;
	public Integer getId() {
		return id;
	}
	public String getGallery_title() {
		return gallery_title;
	}
	public String getGallery_img() {
		return gallery_img;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public void setGallery_title(String gallery_title) {
		this.gallery_title = gallery_title;
	}
	public void setGallery_img(String gallery_img) {
		this.gallery_img = gallery_img;
	}
	public String getDatetime_added() {
		return datetime_added;
	}
	public void setDatetime_added(String datetime_added) {
		this.datetime_added = datetime_added;
	}
	public Integer getEvent_id() {
		return event_id;
	}
	public void setEvent_id(Integer event_id) {
		this.event_id = event_id;
	}
	
}
