package com.backend.tienda.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.backend.tienda.entity.Horario;

@Repository
public interface HorarioRepository extends JpaRepository<Horario,Integer>{

}
