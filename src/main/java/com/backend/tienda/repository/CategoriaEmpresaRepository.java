package com.backend.tienda.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.backend.tienda.entity.CategoriaEmpresa;

@Repository
public interface CategoriaEmpresaRepository extends JpaRepository<CategoriaEmpresa,Integer> {
	

}
