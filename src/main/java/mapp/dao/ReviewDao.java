
package mapp.dao;

import mapp.entity.Review;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface ReviewDao extends JpaRepository<Review, Integer>{

//    @Query("Select c FROM Review c WHERE c.address LIKE CONCAT('%',:address,'%')")
//    public Review findByAddress(@Param("address") String address);
    
}