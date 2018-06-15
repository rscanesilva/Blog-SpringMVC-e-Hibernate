package br.com.hellodev.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.com.hellodev.models.Tutorial;

@Repository
@Transactional
public class TutorialDAO {
	
	@PersistenceContext
    private EntityManager manager;

    public void gravar(Tutorial tutorial){
        manager.persist(tutorial);
    }
}
