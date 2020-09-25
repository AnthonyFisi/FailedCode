package com.backend.tienda;

import java.sql.Timestamp;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;


@SpringBootApplication
public class BackendTiendaAppApplication {
	
	


	public static void main(String[] args) {
		
		Timestamp time=new Timestamp(System.currentTimeMillis());

		long suma=time.getTime()+(60000*10);
		
		
		Timestamp tim2=new Timestamp(suma);

        System.out.println(tim2+" suma = " +time);

		
		
        Timestamp horarioInicio=Timestamp.valueOf("2020-09-22 00:00:00.00");
        
        System.out.println(horarioInicio+" first");

        Timestamp horarioInicio2=Timestamp.valueOf("2020-9-22 0:00:00.00");

        System.out.println(horarioInicio2+" second");

		    
		SpringApplication.run(BackendTiendaAppApplication.class, args);
	
			
		
	}

}
