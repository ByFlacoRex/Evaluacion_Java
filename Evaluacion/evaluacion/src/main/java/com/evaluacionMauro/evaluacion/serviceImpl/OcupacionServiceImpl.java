package com.evaluacionMauro.evaluacion.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.evaluacionMauro.evaluacion.entity.Ocupacion;
import com.evaluacionMauro.evaluacion.reposiotry.OcupacionRepository;
import com.evaluacionMauro.evaluacion.service.OcupacionService;

@Service
public class OcupacionServiceImpl implements OcupacionService {

	@Autowired
	public OcupacionRepository ocupacionReposiotory;
	@Override
	public List<Ocupacion> listarOcupacion() {
		return ocupacionReposiotory.findAll();
	}

}
