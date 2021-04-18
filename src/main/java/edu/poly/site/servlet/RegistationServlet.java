package edu.poly.site.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import edu.poly.common.PageInfo;
import edu.poly.common.PageType;
import edu.poly.dao.UserDao;
import edu.poly.model.User;

/**
 * Servlet implementation class RegistationServlet
 */
@WebServlet("/Registration")
public class RegistationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PageInfo.prepareAndForwardSites(request, response, PageType.SITE_REGISTATION_PAGE);
}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		User user = new User();
		try {
			
			BeanUtils.populate(user, request.getParameterMap());
			
			UserDao dao = new UserDao();
			dao.insert(user);
			
			request.getRequestDispatcher("/Login").forward(request, response);
			return;
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", e.getMessage());
		}
		request.setAttribute("user", user);
		PageInfo.prepareAndForwardSites(request, response, PageType.SITE_REGISTATION_PAGE);
}

}
