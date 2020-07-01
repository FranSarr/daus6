package com.exercicis.daus.persistence;

import com.exercicis.daus.domain.Game;
import org.springframework.data.repository.CrudRepository;

public interface GameRepository extends CrudRepository<Game, Integer> {
}
