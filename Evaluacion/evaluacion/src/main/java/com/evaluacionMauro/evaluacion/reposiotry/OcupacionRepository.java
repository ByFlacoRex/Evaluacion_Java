package com.evaluacionMauro.evaluacion.reposiotry;

import org.springframework.data.jpa.repository.JpaRepository;

import com.evaluacionMauro.evaluacion.entity.Ocupacion;

public interface OcupacionRepository extends JpaRepository<Ocupacion, Long> {
}
