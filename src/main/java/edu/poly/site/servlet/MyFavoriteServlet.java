package edu.poly.site.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.poly.common.PageInfo;
import edu.poly.common.PageType;
import edu.poly.common.SessionUtils;
import edu.poly.dao.FavoriteDao;
import edu.poly.dao.UserDao;
import edu.poly.dao.VideoDao;
import edu.poly.model.Favorite;
import edu.poly.model.User;
import edu.poly.model.Video;

/**
 * Servlet implementation class MyFavoriteServlet
 */
@WebServlet("/MyFavorite")
public class MyFavoriteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyFavoriteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = SessionUtils.getLoginUsername(request);
		System.out.println("input: "+ username);
		
		if (username == null) {
			request.getRequestDispatcher("/Login").forward(request, response);
			return;
		}

		request.setAttribute("username", username);
	try {
			
			UserDao vdao = new UserDao();
		
		
			VideoDao dao = new VideoDao();
			User user = vdao.findByUsername(username);
			
			
			System.out.println("Poster: "+ user.getUsername());
			
			List<Video> list = dao.findMyFavoritesByUser(user);
			for (Video video : list) {
				System.out.println("Poster: "+ video.getVideoId());
			}
			request.setAttribute("myfavList", list);
			
			System.out.println("Why?");
			
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", e.getMessage());
		}


		
		PageInfo.prepareAndForwardSites(request, response, PageType.SITE_FAVORITES_PAGE);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	
	}

}
