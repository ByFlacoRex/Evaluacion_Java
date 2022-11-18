package com.evaluacionMauro.evaluacion.serviceImpl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.evaluacionMauro.evaluacion.entity.Cliente;
import com.evaluacionMauro.evaluacion.reposiotry.ClienteRepository;
import com.evaluacionMauro.evaluacion.service.ClienteService;

@Service
public class ClienteServiceImpl implements ClienteService {

	@Autowired
	public ClienteRepository clienteReposiotry;
	@Override
	public List<Cliente> listarClientes() {
		return clienteReposiotry.findAll();
	}

	@Override
	public Cliente insertarYactualizarCliente(Cliente obj) {
		return clienteReposiotry.save(obj);
	}

	@Override
	public Optional<Cliente> clientePorId(Long documento) {
		return clienteReposiotry.findById(documento);
	}

	@Override
	public void eliminarCliente(Long id) {
		clienteReposiotry.deleteById(id);
	}

	@Override
	public List<Cliente> listarClientePorNombre(String filtro) {
		return clienteReposiotry.listarClientePorNombre(filtro);
	}

}
