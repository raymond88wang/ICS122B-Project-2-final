package DbModel;


public class Filters {
	public String genre = null;
	public String searchWord = null;
	public String type = null;
	public int pageLength = 10;
	public int currentPage = 0;
	
	public Filters(){
		genre = "";
		searchWord = "";
		type = "";
	}
}
