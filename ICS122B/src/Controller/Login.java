package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import AppService.CacheService;
import AppService.ResponseService;
import AppService.UserService;
import DbModel.Customer;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public static final String LOGIN_VIEW = "../Login.jsp";
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(CacheService.GetCache(request, CacheService.USER_CACHE_NAME) != null){
			request.setAttribute("body_url", Home.HOME_VIEW);
		}
		else{
			request.setAttribute("body_url", Login.LOGIN_VIEW);
		}
		ResponseService.SendResponse(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		UserService svc = new UserService();
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		Customer c = svc.getCustomerByEmailAndPassword(email, password);
		if(c != null){
			CacheService.AddCache(request, CacheService.USER_CACHE_NAME, c);
			request.setAttribute("body_url", Home.HOME_VIEW);
		}
		else{
			request.setAttribute("body_url", Login.LOGIN_VIEW);
			request.setAttribute("login_fail", true);
		}
		
		ResponseService.SendResponse(request, response);
	}

}
