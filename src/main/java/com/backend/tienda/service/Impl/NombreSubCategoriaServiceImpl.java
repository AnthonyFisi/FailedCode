package com.backend.tienda.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.backend.tienda.entity.NombreSubcategoria;
import com.backend.tienda.repository.NombreSubCategoriaRepository;
import com.backend.tienda.service.NombreSubCategoriaService;

@Service
public class NombreSubCategoriaServiceImpl implements NombreSubCategoriaService {
	
	
	@Autowired
	NombreSubCategoriaRepository nombreSubCategoriaRepository;
	
	
	@Override
	public List<NombreSubcategoria> listaNombreSubCategoria() {
		return nombreSubCategoriaRepository.findAll();
	}


	@Override
	public NombreSubcategoria insertarNombreSubCategoria(NombreSubcategoria nombreSubCategoria) {
		return nombreSubCategoriaRepository.save(nombreSubCategoria);
	}


	@Override
	public List<NombreSubcategoria> listaNombreSubCategoriaByidEmpresa(int idempresa) {
		return nombreSubCategoriaRepository.findByidempresa(idempresa);
	}



}
