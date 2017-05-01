package DbContext;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import DbModel.Genre;
import DbModel.Movie;
import DbModel.Star;

public class dbMovie extends dbContext {
	public static final String id_col = "id";
	public static final String title_col = "title";
	public static final String year_col = "year";
	public static final String director_col = "director";
	public static final String banner_url_col = "banner_url";
	public static final String trailer_url_col = "trailer_url";
	public static final String table_name = "movies";
	public static final String star_mapping_table_name = "stars_in_movies";
	
	public dbMovie(){
		super();
		this.tableName = dbMovie.table_name;
	}
	private List<Movie> ExecuteQueryStatement(String query){
		ResultSet r = super.ExecuteQuery(query);
		ArrayList<Movie> movieResult = new ArrayList<Movie>();
		dbGenre genreDb = new dbGenre();
		dbStars starDb = new dbStars();
		
		ArrayList<Genre> allGenre = genreDb.GetAllGenreMappedMovie();
		ArrayList<Star> allStar = starDb.GetAllStarMappedWithMovie();
		try{
		    while (r.next())
		    {	
		    	Movie movie = new Movie();
		    	movie.setId(r.getInt(dbMovie.id_col));
		    	movie.setTitle(r.getString(dbMovie.title_col));
		    	movie.setYear(r.getInt(dbMovie.year_col));
		    	movie.setDirector(r.getString(dbMovie.director_col));
		    	movie.setBanner_url(r.getString(dbMovie.banner_url_col));
		    	movie.setTrailer_url(r.getString(dbMovie.trailer_url_col));
		    	
		    	movie.setGenres(allGenre.stream().filter(x -> x.getMovieIdList().contains(movie.getId())).collect(Collectors.toList()));
		    	movie.setStars(allStar.stream().filter(x -> x.getMovieIdList().contains(movie.getId())).collect(Collectors.toList()));
		    	
		    	movieResult.add(movie);
		    }
		}
		catch(Exception e){
			System.out.println("Error occured getting movies");
			return null;
		}
		return movieResult;
		
	}
	
	public List<Movie> GetAllMovies(){
		String selectQuery = "select * from movies m ";
		
		return this.ExecuteQueryStatement(selectQuery);
	}
		
}

