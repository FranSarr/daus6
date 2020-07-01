package com.exercicis.daus.persistence;

import com.exercicis.daus.domain.Player;
import org.springframework.data.repository.CrudRepository;

public interface PlayerRepository extends CrudRepository<Player, Integer> {

}
