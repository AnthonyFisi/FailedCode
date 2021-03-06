package com.backend.tienda.service;

import java.util.List;

import com.backend.tienda.entity.Restaurante_Pedido;

public interface Restaurante_PedidoService {

	
	List<Restaurante_Pedido> listaRestaurantePedidosNuevos(int idEmpresa);
	
	List<Restaurante_Pedido> listaRestaurantePedidosNuevosDistinct(int idEmpresa);
	
	Restaurante_Pedido recientePedido(int idEmpresa,int idPedido,int idVenta);
	
	List<Restaurante_Pedido> listaRestaurantePedidosProceso(int idEmpresa);
	
	List<Restaurante_Pedido> listaRestaurantePedidosReady(int idEmpresa);
	
	List<Restaurante_Pedido> listaRestaurantePedidosHistorial(int idEmpresa);
	
	Restaurante_Pedido findByIdVenta(int idVenta);
	
}
