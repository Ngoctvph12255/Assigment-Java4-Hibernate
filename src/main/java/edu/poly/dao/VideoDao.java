package edu.poly.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;

import edu.poly.model.User;
import edu.poly.model.Video;

public class VideoDao extends AbstractEntityDao<Video> {

	public VideoDao() {
		super(Video.class);
	}
	public List<Video> findMyFavoritesByUser(User user) {//String user
		EntityManager em = JpaUtils.getEntityManager();
		String jpql = "SELECT v FROM Favorite f INNER JOIN Video WHERE f.user = :user";
		
		try {
			TypedQuery<Video> query = em.createQuery(jpql, Video.class);
			query.setParameter("user", user );
			return query.getResultList();
		} finally {
			em.close();
		}	
	}
}
