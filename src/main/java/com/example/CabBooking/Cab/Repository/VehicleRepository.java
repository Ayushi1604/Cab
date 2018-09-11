package com.example.CabBooking.Cab.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import com.example.CabBooking.Cab.Bean.VehicleBean;

public interface VehicleRepository extends JpaRepository<VehicleBean,String>{

	//VehicleBean find(String vehicleNumber);
	List<VehicleBean> findByVehicleNameAndVehicleType(String name, String type);

}
