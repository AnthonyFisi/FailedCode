package com.backend.tienda.api;

import java.sql.Timestamp;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.backend.tienda.entity.Producto;
import com.backend.tienda.entity.ProductoApp;
import com.backend.tienda.gson.ProductoGson;
import com.backend.tienda.service.ProductoService;

@RestController
@RequestMapping(ProductoController.PRODUCTO_CONTROLLER)
public class ProductoController {

	public final static String PRODUCTO_CONTROLLER="/productoController";

	public final static String LISTA_PRODUCTOS="/lista";

	public final static String INSERTAR_PRODUCTO="/insertar";

	public final static String LISTA_PRODUCTOS_FIND_IDCATEGORIA_IDEMPRESA="/listaCategoria/{idcategoriaproducto}/{idempresa}";

	public final static String LISTA_PRODUCTOS_FIND_IDEMPRESA="/listaCategoria/{idempresa}";

	public final static String UPDATE_DISPONIBILIDAD="/updateDisponibilidad/{idproducto}/{idempresa}/{disponibilidad}";

	public final static String LIST_PRODUCTOS_EMPRESA="/listaProductosEmpresa/{idEmpresa}";

	public final static String BUSCAR_BY_WORD="/searchWord/{idempresa}/{word}";

	public final static String ELIMINAR_CATEGORIA_PRODUCTO="/eliminarCategoria/{idcategoriaproducto}/{idempresa}";

	public final static String PROOF="/proof/{idempresa}/{idcategoriaproducto}";


	@Autowired
	ProductoService productoService;


	@RequestMapping(value=INSERTAR_PRODUCTO,method=RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<Producto> regitrarCuentaEmpresa(
			@RequestBody Producto producto){

		Producto rpta=null;
		
		Timestamp time=new Timestamp(System.currentTimeMillis());
		
		producto.setProductofechacreacion(time);
		
		
		
		rpta=productoService.insertarProducto(producto);
		
			
		return new ResponseEntity<Producto>(rpta,HttpStatus.OK);

	}



	@RequestMapping(value=LISTA_PRODUCTOS,method=RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<ProductoGson> listaCuentaEmprsa(){

		List<Producto> rpta=null;
		ProductoGson productoGson=null;


		try {
			rpta=productoService.listaProducto();
			productoGson= new ProductoGson();
			productoGson.setListaProducto(rpta);

		}catch(Exception e) 
		{
			return new ResponseEntity<ProductoGson>(productoGson,HttpStatus.INTERNAL_SERVER_ERROR);
		}

		return new ResponseEntity<ProductoGson>(productoGson,HttpStatus.OK);

	}






	@RequestMapping(value=LISTA_PRODUCTOS_FIND_IDCATEGORIA_IDEMPRESA,method=RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<ProductoGson> listaCategoriaAndEmpresa(@PathVariable("idcategoriaproducto") int idcategoriaproducto,
			@PathVariable("idempresa") int idempresa){

		List<Producto> rpta=null;
		ProductoGson productoGson=null;


		try {
			rpta=productoService.listaIdcategoriaproductoAndIdempresa(idcategoriaproducto, idempresa);

			/*for(Producto producto:rpta) {
				producto.setProducto_fechacreacion(null);

			}*/
			productoGson= new ProductoGson();
			productoGson.setListaProducto(rpta);

		}catch(Exception e) 
		{
			return new ResponseEntity<ProductoGson>(productoGson,HttpStatus.INTERNAL_SERVER_ERROR);
		}

		return new ResponseEntity<ProductoGson>(productoGson,HttpStatus.OK);

	}

	@RequestMapping(value=LISTA_PRODUCTOS_FIND_IDEMPRESA,method=RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<ProductoGson> listaEmpresa(
			@PathVariable("idempresa") int idempresa){

		List<Producto> rpta=null;
		ProductoGson productoGson=null;


		try {
			rpta=productoService.findByidempresa(idempresa);
			productoGson= new ProductoGson();
			productoGson.setListaProducto(rpta);

		}catch(Exception e) 
		{
			return new ResponseEntity<ProductoGson>(productoGson,HttpStatus.INTERNAL_SERVER_ERROR);
		}

		return new ResponseEntity<ProductoGson>(productoGson,HttpStatus.OK);

	}


	@RequestMapping(value=UPDATE_DISPONIBILIDAD,method=RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<Producto>  updateDisponibilidadProducto(@PathVariable("idproducto") int idproducto,
			@PathVariable("idempresa") int idempresa,@PathVariable("disponibilidad") boolean disponibilidad){

		Producto producto=null;


		try {
			producto=productoService.updateDisponibilidadProducto(idproducto,idempresa, disponibilidad);
			
		//	producto.setProducto_fechacreacion(null);

		}catch(Exception e) 
		{
			return new ResponseEntity<Producto>(producto,HttpStatus.INTERNAL_SERVER_ERROR);
		}

		return new ResponseEntity<Producto>(producto,HttpStatus.OK);

	}

	@RequestMapping(value=LIST_PRODUCTOS_EMPRESA,method=RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<ProductoGson> listaProductosByIdEmpresa(@PathVariable("idEmpresa") int idEmpresa){

		List<Producto> rpta=null;
		List<ProductoApp> lista=new ArrayList<>();
		ProductoGson productoGson=null;


		try {
			rpta=productoService.findByidempresa(idEmpresa);

			/*for(Producto producto:rpta) {
				producto.setProducto_fechacreacion(null);

			}*/

			productoGson= new ProductoGson();
			productoGson.setListaProducto(rpta);

		}catch(Exception e) 
		{
			System.out.println(e.getMessage());
			System.out.println(e.getCause());

			return new ResponseEntity<ProductoGson>(productoGson,HttpStatus.INTERNAL_SERVER_ERROR);
		}

		return new ResponseEntity<ProductoGson> (productoGson,HttpStatus.OK);


	}

	@GetMapping(BUSCAR_BY_WORD)
	public ResponseEntity<?> regitrarCuentaEmpresa(@PathVariable("idempresa")int idempresa,@PathVariable("word")String word){

		List<Producto> rpta=null;
		ProductoGson productoGson=null;

		rpta=productoService.listafindByPalabra(idempresa,word);
		
		
		if(rpta.isEmpty()) {
		
			return ResponseEntity.notFound().build();
		}

		productoGson= new ProductoGson();
		productoGson.setListaProducto(rpta);
		return ResponseEntity.ok(productoGson);


	}
	
	
	@GetMapping(ELIMINAR_CATEGORIA_PRODUCTO)
	public ResponseEntity<?> eliminarCategoriaProducto(@PathVariable("idcategoriaproducto") int idcategoriaproducto,
			@PathVariable("idempresa") int idempresa){

		List<Producto> rpta=null;
		
		rpta=productoService.listaIdcategoriaproductoAndIdempresa(idcategoriaproducto, idempresa);

		if(rpta.isEmpty()) {
			
			return ResponseEntity.notFound().build();
			
		}
		for(Producto producto:rpta) {
			productoService.eliminarProductoById(producto.getIdproducto());	
		}	
		
		return ResponseEntity.ok("Eliminado");
		
		
	}
	


}
