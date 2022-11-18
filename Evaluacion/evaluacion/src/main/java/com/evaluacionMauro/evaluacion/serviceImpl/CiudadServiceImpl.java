package com.evaluacionMauro.evaluacion.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.evaluacionMauro.evaluacion.entity.Ciudad;
import com.evaluacionMauro.evaluacion.reposiotry.CiudadRepository;
import com.evaluacionMauro.evaluacion.service.CiudadService;

@Service
public class CiudadServiceImpl implements CiudadService{

	@Autowired
	public CiudadRepository ciudadReposiotry;
	@Override
	public List<Ciudad> listarCiudad() {
		return ciudadReposiotry.findAll();
	}
	@Override
	public List<Ciudad> listarCiudadporNombre(String filtro) {
		return ciudadReposiotry.mostrarCiudadPorNombre(filtro);
	}

}
