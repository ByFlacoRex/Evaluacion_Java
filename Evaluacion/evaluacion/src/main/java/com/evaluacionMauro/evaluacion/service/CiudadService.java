package com.evaluacionMauro.evaluacion.service;

import java.util.List;

import com.evaluacionMauro.evaluacion.entity.Ciudad;

public interface CiudadService {
	
	public List<Ciudad> listarCiudad();
	public List<Ciudad> listarCiudadporNombre(String filtro);

}
