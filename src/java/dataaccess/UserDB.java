package dataaccess;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.Query;
import models.User;


public class UserDB {
    public User get(String email) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        
        try {
            User user = em.find(User.class, email);
            return user;
        } finally {
            em.close();
        }
    }
    
     public void setUUID(String email,String uuid){
        EntityManager em =DBUtil.getEmFactory().createEntityManager();
        em.getTransaction().begin();
        em.createNativeQuery("UPDATE user  SET reset_password_uuid =(?) WHERE email =(?)").setParameter(1, email).setParameter(2, uuid).executeUpdate();
        em.getTransaction().commit();
    }
     
      public User getByUUID(String uuid){
        EntityManager em =DBUtil.getEmFactory().createEntityManager();
        try{
            String email = (String) em.createNativeQuery("SELECT email from user u where u.reset_password_uuid =(?)").setParameter(1, uuid).getSingleResult();
        
            User user =em.find(User.class, email);
        return user;
        }
        finally{
            em.close();
        }
    }
    
        
        public boolean changePassword(String uuid, String password) {
       UserDB userDB = new UserDB();
        try {
            User user = userDB.getByUUID(uuid);
            user.setPassword(password);
            user.setUUID(null);
            userDB.update(user);
            return true;
        } catch (Exception ex) {
            return false;
        }
    }
        
         public boolean update(User user){
            EntityManager em =DBUtil.getEmFactory().createEntityManager();
            
            try{
               em.getTransaction().begin();
               em.merge(user);
               em.getTransaction().commit();
               return true;
    }      catch (Exception ex) {
            em.getTransaction().rollback();
           
            return false;
        }   
            finally{
                em.close();
                
            }
        }

        public boolean insert(User user) throws Exception {
       EntityManager em = DBUtil.getEmFactory().createEntityManager();  
        
        try {
            em.getTransaction().begin();
            em.persist(user); 
            em.merge(user); 
            em.getTransaction().commit();
            
            return true;
        } catch (Exception ex) {
            em.getTransaction().rollback();
           
            return false;
        } finally { 
            em.close();
        }
    }
        
        public boolean delete(User user) throws Exception {
            EntityManager em = DBUtil.getEmFactory().createEntityManager();  
            try{
                em.getTransaction().begin();
                //em.remove(em.merge(user));
                Query query = em.createNamedQuery("User.softDelete",User.class);
                query.setParameter("email", user.getEmail());
                query.executeUpdate();
                
                em.getTransaction().commit();
                return true;
 
            }
            catch (Exception ex){
                em.getTransaction().rollback();
                return false;
            }
            finally{
                em.close();
            }
        }
         public List<User> getAll() throws Exception {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        
        try {
            Query query = em.createNamedQuery("User.findAll");
            return query.getResultList();
        } finally {
            em.close();
        }
    }

        
}
