package com.example.CabBooking.Cab.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.CabBooking.Cab.Bean.DriverBean;

public interface DriverRepository extends JpaRepository<DriverBean,String>{

}
