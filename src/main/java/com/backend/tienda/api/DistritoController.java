package com.backend.tienda.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.backend.tienda.entity.Distrito;
import com.backend.tienda.gson.DistritoGson;
import com.backend.tienda.service.DistritoService;

@RestController
@RequestMapping(DistritoController.DISTRITO_CONTROLLER)
public class DistritoController {
	
    public final static String DISTRITO_CONTROLLER="/DistritoController";
	
	public final static String LISTA_DISTRITO="/lista/{idprovincia}";
	
	@Autowired
	DistritoService distritoService;
	
	
	@RequestMapping(value=LISTA_DISTRITO,method=RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<DistritoGson> listaDistrito(@PathVariable("idprovincia") int idprovincia){
		
		List<Distrito> lista=null;
		
		DistritoGson distritoGson=null;
		
		try {
			
			lista=distritoService.listaDistrito(idprovincia);
			distritoGson=new DistritoGson();
			distritoGson.setListaDistrito(lista);
			
		}catch(Exception e) {
			return new ResponseEntity<DistritoGson>(distritoGson,HttpStatus.INTERNAL_SERVER_ERROR);

		}
		
		return new ResponseEntity<DistritoGson>(distritoGson,HttpStatus.OK);
		
		
	}

}
