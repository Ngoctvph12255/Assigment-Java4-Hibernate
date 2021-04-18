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
import edu.poly.common.SessionUtils;
import edu.poly.dao.UserDao;
import edu.poly.domain.ChangePasswordForm;

/**
 * Servlet implementation class ChangePasswordServlet
 */
@WebServlet("/ChangePassword")
public class ChangePasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ChangePasswordServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = SessionUtils.getLoginUsername(request);

		if (username == null) {
			request.getRequestDispatcher("/Login").forward(request, response);
			return;
		}

		request.setAttribute("username", username);
		PageInfo.prepareAndForwardSites(request, response, PageType.SITE_CHANGE_PASSWORD_PAGE);

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			String username = SessionUtils.getLoginUsername(request);

			ChangePasswordForm form = new ChangePasswordForm();
			BeanUtils.populate(form, request.getParameterMap());

			request.setAttribute("username", username);
			
			System.out.println("conf:" + form.getConfirmPassword());
			System.out.println("pass: " + form.getPassword());

			if (!form.getConfirmPassword().equals(form.getPassword())) {
				request.setAttribute("error", "New password and new confirm password are not indentical");
			} else {
				UserDao dao = new UserDao();
				dao.changePassword(form.getUsername(), form.getCurrentPassword(), form.getPassword());
				request.setAttribute("message", "Password has been changed");

			}
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", e.getMessage());
		}
		PageInfo.prepareAndForwardSites(request, response, PageType.SITE_CHANGE_PASSWORD_PAGE);

	}

}
