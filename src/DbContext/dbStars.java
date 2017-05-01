package DbContext;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;

import DbModel.Genre;
import DbModel.Star;

public class dbStars extends dbContext {
	public static final String id_col = "id";
	public static final String first_name_col = "first_name";
	public static final String last_name_col = "last_name";
	public static final String dob_col = "dob";
	public static final String photo_url_col = "photo_url";
	public static final String table_name = "stars";
	public static final String movie_id_col = "movie_id";
	
	public dbStars(){
		super();
		this.tableName = dbStars.table_name;
	}
	
	public ArrayList<Star> GetAllStarMappedWithMovie(){
		String selectAllQuery = String.format("select * from %s join stars_in_movies on id = star_id order by id", this.tableName);
		ResultSet r = super.ExecuteQuery(selectAllQuery);
		ArrayList<Star> allStar = new ArrayList<Star>();
		HashMap<Integer, Star> starMapped = new HashMap<Integer, Star>();
		Star s = null;
		
		try{
		    while (r.next())
		    {
		    	int key = r.getInt(dbStars.id_col);
		    	if(starMapped.containsKey(key)){
		    		s = starMapped.get(key);
		    		s.getMovieIdList().add(r.getInt(dbStars.movie_id_col));
		    		starMapped.put(key, s);
		    	}
		    	else{
		    		if(s != null){
		    			allStar.add(s);
		    		}
		    		
			    	s = new Star();
			      	s.setId(r.getInt(dbStars.id_col));
			    	s.setFirst_name(r.getString(dbStars.first_name_col));
			    	s.setLast_name(r.getString(dbStars.last_name_col));
			    	s.setDob(r.getDate(dbStars.dob_col));
			    	s.setPhoto_url(r.getString(dbStars.photo_url_col));
			    	s.getMovieIdList().add(r.getInt(dbStars.movie_id_col));
		    	}

		    }
		}
		catch(Exception e){
			System.out.println("Error occured getting customers");
			return null;
		}
		return allStar;
	}
	
	
	
}
