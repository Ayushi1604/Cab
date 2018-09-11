package com.example.CabBooking.Cab.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.CabBooking.Cab.Bean.BookingHistoryBean;

public interface BookingRepository extends JpaRepository<BookingHistoryBean,String> {
	
	List<BookingHistoryBean> findByEmail(String email);

}
