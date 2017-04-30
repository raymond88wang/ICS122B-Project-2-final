package DbModel;
import java.sql.Date;
import java.util.ArrayList;

public class Star {
	private int id = -1;
	private String first_name = null;
	private String last_name = null;
	private Date dob = null;
	private String photo_url = null;
	private ArrayList<Integer> movieIdList = null;
	public Star(){
		movieIdList = new ArrayList<Integer>();
	}
	
	public ArrayList<Integer> getMovieIdList() {
		return movieIdList;
	}
	public void setMovieIdList(ArrayList<Integer> movieIdList) {
		this.movieIdList = movieIdList;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFirst_name() {
		return first_name;
	}
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	public String getLast_name() {
		return last_name;
	}
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	public Date getDob() {
		return dob;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}
	public String getPhoto_url() {
		return photo_url;
	}
	public void setPhoto_url(String photo_url) {
		this.photo_url = photo_url;
	}
}
