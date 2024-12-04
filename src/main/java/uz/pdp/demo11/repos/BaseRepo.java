package uz.pdp.demo11.repos;

import jakarta.persistence.EntityManager;
import jakarta.persistence.Parameter;

import java.lang.reflect.ParameterizedType;
import java.util.List;

import static uz.pdp.demo11.MyListener.EMF;

public class BaseRepo<T> {

    public void save(T entity) {

        try(
                EntityManager em = EMF.createEntityManager();
                ) {
            em.getTransaction().begin();
            em.persist(entity);
            em.getTransaction().commit();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }

    }
    private final Class<T> persistentClass;
    public BaseRepo(){
        Class<T> tClass = (Class<T>) ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[0];
        this.persistentClass = tClass;
    }

    public List<T> findAll() {

        try(
                EntityManager em = EMF.createEntityManager();
        ) {
           return em.createQuery("from %s".formatted(persistentClass.getSimpleName()),persistentClass).getResultList();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }

    }



}
