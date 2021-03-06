package com.backend.tienda.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.backend.tienda.entity.Orden_estado_empresa;
import com.backend.tienda.entity.Orden_estado_empresaPK;

@Repository
public interface Orden_estado_restauranteRepository extends JpaRepository<Orden_estado_empresa,Orden_estado_empresaPK>{
	
	@Query(value="SELECT idventa,idestado_venta ,detalle ,fecha FROM orden_estado_restaurante WHERE idventa = ?1 ",nativeQuery=true)
	List<Orden_estado_empresa> listFindByidVenta(int idVenta);
	

}
