package com.example.CabBooking.Cab.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.CabBooking.Cab.Bean.LoginBean;

public interface LoginRepository extends JpaRepository<LoginBean,Long>{
	boolean existsByEmail(String email);
	LoginBean findByEmail(String email);
}
