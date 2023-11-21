package br.edu.ifgoiano.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import br.edu.ifgoiano.entity.Medico;
import br.edu.ifgoiano.repository.MedicoRepository;

@RestController
@RequestMapping("/medico")
public class MedicoController {

	@Autowired
	private MedicoRepository medicoRepository;

	@PostMapping
	public void cadastrar(@RequestBody Medico medico) {
		this.medicoRepository.save(medico);
	}
	
	@GetMapping
	public List<Medico> listar(){
		return this.medicoRepository.findAll();
	}
	
	@PutMapping
	public void atualizar(@RequestBody Medico medico) {
		this.medicoRepository.save(medico);
	}
	
	@DeleteMapping
	public void excluir(@PathVariable Long id) {
		this.medicoRepository.deleteById(id);
	}
}
