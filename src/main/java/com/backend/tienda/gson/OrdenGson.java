package com.backend.tienda.gson;

import java.io.Serializable;
import java.util.List;

import com.backend.tienda.api.ProductoJOINregistroPedidoJOINpedidoController;
import com.backend.tienda.entity.Orden;
import com.backend.tienda.entity.Orden_estado_general;
import com.backend.tienda.entity.Orden_estado_empresa;
import com.backend.tienda.entity.ProductoJOINregistroPedidoJOINpedido;
import com.backend.tienda.entity.Usuario_general;

public class OrdenGson implements Serializable{

	private Orden detalle_orden;
	
	private Usuario_general usuario;
	
	private List<ProductoJOINregistroPedidoJOINpedido> lista_productos;
	
	private List<Orden_estado_general> lista_orden_general;

	public Orden getDetalle_orden() {
		return detalle_orden;
	}

	public void setDetalle_orden(Orden detalle_orden) {
		this.detalle_orden = detalle_orden;
	}

	public Usuario_general getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario_general usuario) {
		this.usuario = usuario;
	}

	public List<ProductoJOINregistroPedidoJOINpedido> getLista_productos() {
		return lista_productos;
	}

	public void setLista_productos(List<ProductoJOINregistroPedidoJOINpedido> lista_productos) {
		this.lista_productos = lista_productos;
	}

	public List<Orden_estado_general> getLista_orden_general() {
		return lista_orden_general;
	}

	public void setLista_orden_general(List<Orden_estado_general> lista_orden_general) {
		this.lista_orden_general = lista_orden_general;
	}

	
	
	

	
	
	
}
