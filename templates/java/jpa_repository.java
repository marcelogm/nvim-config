package br.gov.rs.defensoria.drhconcursos.drhconcursos.repository;

import {{_lua:require('marcelo/utils').get_entity_import()_}};
import org.springframework.data.jpa.repository.JpaRepository;

public interface {{_file_name_}} extends JpaRepository<{{_lua:require('marcelo/utils').get_entity_from_repository()_}}, Long> {
}
