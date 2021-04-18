package edu.poly.site.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import edu.poly.common.CookiesUtils;
import edu.poly.common.PageInfo;
import edu.poly.common.PageType;
import edu.poly.common.SessionUtils;
import edu.poly.dao.UserDao;
import edu.poly.domain.LoginForm;
import edu.poly.model.User;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/Login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = CookiesUtils.get("username", request);
		if(username == null) {
			PageInfo.prepareAndForwardSites(request, response, PageType.SITE_LOGIN_PAGE);
			return;
		}
		
		SessionUtils.add(request, "username", username);
		request.getRequestDispatcher("/Homepage").forward(request, response);
		
		
		PageInfo.prepareAndForwardSites(request, response, PageType.SITE_LOGIN_PAGE);
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {
			LoginForm form = new LoginForm();
			
			BeanUtils.populate(form, request.getParameterMap());
			
			UserDao dao = new UserDao();
			User user = dao.findById(form.getUsername());
			
			if(user != null && user.getPassword().equals(form.getPassword())) {
				SessionUtils.add(request, "username", user.getUsername());
				
				if(form.isRemenber()) {
					CookiesUtils.add("username", form.getUsername(), 24, response);
				}else {
					CookiesUtils.add("username", form.getUsername(), 0, response);
				}
				request.setAttribute("isLogin", true);
				request.setAttribute("name", user.getFullname());
				request.getRequestDispatcher("/Homepage").forward(request, response);
				return;
			}
			request.setAttribute("error", "Invalid username or password");
			PageInfo.prepareAndForwardSites(request, response, PageType.SITE_LOGIN_PAGE);
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", e.getMessage());
		}
			
	}

}
