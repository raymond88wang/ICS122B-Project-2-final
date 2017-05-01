package DbContext;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import DbModel.Genre;

public class dbGenre extends dbContext {
	public static final String id_col = "id";
	public static final String name_col = "name";
	public static final String movie_id_col = "movie_id";
	public dbGenre(){
		super();
		this.tableName = "genres";
	}

	public ArrayList<Genre> GetAllGenreMappedMovie(){
		String selectAllQuery = String.format("select * from %s join genres_in_movies on id = genre_id order by name", this.tableName);
		ResultSet r = super.ExecuteQuery(selectAllQuery);
		ArrayList<Genre> allGenre = new ArrayList<Genre>();
		HashMap<Integer, Genre> genreMapped = new HashMap<Integer, Genre>();
		Genre g = null;
		try{
		    while (r.next())
		    {
		    	int key = r.getInt(dbGenre.id_col);
		    	if(genreMapped.containsKey(key)){
		    		g = genreMapped.get(key);
		    		g.getMovieIdList().add(r.getInt(dbGenre.movie_id_col));
		    	}
		    	else{
		    		if(g != null){
		    			allGenre.add(g);
		    		}
		    		g = new Genre();
			      	g.setId(r.getInt(dbGenre.id_col));
			    	g.setName(r.getString(dbGenre.name_col));
			    	g.getMovieIdList().add(r.getInt(dbGenre.movie_id_col));
		    	}
		    	genreMapped.put(key, g);
		    }
		}
		catch(Exception e){
			System.out.println("Error occured getting customers");
			return null;
		}
		return allGenre;
	}

}
