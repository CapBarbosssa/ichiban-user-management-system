/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dataaccess;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import models.Item;
import models.User;

/**
 *
 * @author peony
 */
public class ItemDB {
        public List<Item> getAll(String owner) throws Exception {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        
   try {
            User user = em.find(User.class, owner);
            return user.getItemList();
        } finally {
            em.close();
        }
        }
        
          public List<Item> getAllItems() throws Exception {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        
        try {
            Query query = em.createNamedQuery("Item.findAll");
            return query.getResultList();
        } finally {
            em.close();
        }
    }

    public Item get(int itemId) throws Exception {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        
        try {
           Item  item = em.find(Item.class, itemId);
            return item;
        } finally { 
            em.close();
        }
    }

    public void insert(Item item) throws Exception {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        
        try {

            trans.begin();
            em.persist(item);
            em.merge(item);
            trans.commit();
        } catch (Exception ex) {
            trans.rollback();
        } finally {
            em.close();
        }
    }

    public void update(Item item) throws Exception {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        
        try {
            trans.begin();
            em.merge(item);
            trans.commit();
        } catch (Exception ex) {
            trans.rollback();
        } finally {
            em.close();
        }
    }

    public void delete(Item item) throws Exception {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        
        try {
            trans.begin();
            em.remove(em.merge(item));
            trans.commit();
        } catch (Exception ex) {
            trans.rollback();
        } finally {
            em.close();
        }
    }
          public Item getOwner(String email){
        EntityManager em =DBUtil.getEmFactory().createEntityManager();
        try{
            String sql = (String) em.createNativeQuery("SELECT * from item i where i.owner =(?)").setParameter(1, email).getSingleResult();
        
           Item item  = em.find(Item.class, sql);
        return item;
        }
        finally{
            em.close();
        }
    }
}
