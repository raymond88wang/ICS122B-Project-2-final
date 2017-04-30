package Controller;


import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DbModel.Filters;
import DbModel.Genre;
import DbModel.Movie;
import DbModel.Star;
import ViewModel.MovieListViewModel;
import AppService.CacheService;
import AppService.JsonService;
import AppService.ResponseService;
import AppService.SearchService;
import DbContext.dbGenre;
import DbContext.dbMovie;
import DbContext.dbStars;
/**
 * Servlet implementation class Main
 */
@WebServlet("/Search")
public class Search extends HttpServlet 
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public Search()
	{
		super();
	}
	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{	
		Filters filter = (Filters)JsonService.GetJsonFromObject(request.getParameter("filter"), Filters.class);
		
		SearchService searchRequest = new SearchService();
		MovieListViewModel vm = new MovieListViewModel();
		
		List<Movie> allMovie = (List<Movie>)CacheService.GetCache(request, CacheService.FULL_MOVIE_LIST_CACHE_NAME);
		List<Genre> allGenre = (List<Genre>)CacheService.GetCache(request, CacheService.GENRE_CACHE_NAME);
		List<Star> allStars = (List<Star>)CacheService.GetCache(request, CacheService.STAR_CACHE_NAME);

		if(allMovie == null){
			dbMovie movieDb = new dbMovie();
			allMovie = movieDb.GetAllMovies();
			CacheService.AddCache(request, CacheService.FULL_MOVIE_LIST_CACHE_NAME, allMovie);

		}
		if(allGenre == null){
			dbGenre genreDb = new dbGenre();
			allGenre = genreDb.GetAllGenreMappedMovie();
			CacheService.AddCache(request, CacheService.GENRE_CACHE_NAME, allGenre);
		}
		if(allStars == null){
			dbStars starDb = new dbStars();
			allStars = starDb.GetAllStarMappedWithMovie();
			CacheService.AddCache(request, CacheService.STAR_CACHE_NAME, allStars);
		}
		
		List<Movie> movieReult = searchRequest.getMovieList(allMovie, filter);
		CacheService.AddCache(request, CacheService.CURRENT_MOVIE_LIST_CACHE_NAME, movieReult);
		
		vm.setGenreList(allGenre);;
		vm.setMovieList(movieReult.subList(0, Math.min(movieReult.size(), 10)));
		vm.setMovieCount(movieReult.size());
		vm.setFilters(filter);
		
		ResponseService.SendJson(response, vm);
	
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
