package com.exercicis.daus.persistence;

import com.exercicis.daus.domain.Game;
import com.exercicis.daus.domain.Player;
import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


public interface PlayerRepository extends CrudRepository<Player, Integer> {
    Player findById(int id);
    Boolean existsByName(String name);
    Boolean existsById(int id);

}
