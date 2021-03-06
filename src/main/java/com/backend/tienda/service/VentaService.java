package com.backend.tienda.service;

import java.sql.Timestamp;
import java.util.List;

import com.backend.tienda.entity.Venta;

public interface VentaService {
	
	Venta registrarVenta(Venta venta);
	
	List<Venta> listaVentaTotal();
	
	Venta updateVentaEstado(int idVenta,int idEstado_Venta,String tiempo_espera,String tiempototal_espera,Timestamp fecha_entrega);
	
	Venta updateVentaEstado(int idVenta,int idEstado_Venta);
	
	Venta updateVentaTiempoEspera(int idVenta,int tiempo);
	
	Venta updateVentaPrecioTotal(int idVenta,float costoTotal);
	
	Venta updateVentaCancelarPedido(int idVenta,String comentario);
	
	Venta getVenta(int idVenta);
	
	Venta updateDeliveryEstado(int idVenta,int idEstado_delivery,int idRepartidor);
	
	Venta updateDisponibilidad(int idVenta);
	
	Venta updateVentaEstadoGeneral(int idventa,int idestado_general);


}
