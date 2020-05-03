package com.backend.tienda.service;

import java.util.List;

import com.backend.tienda.entity.Carrito;

public interface CarritoService {
	
	List<Carrito> listaCompras(int idUsuario,int idPedido);
	List<Carrito> listaComprasRealizada(int idPedido);
	int eliminarCarrito(int idPedido);



}
