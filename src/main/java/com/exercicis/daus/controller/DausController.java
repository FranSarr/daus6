package com.exercicis.daus.controller;

import com.exercicis.daus.domain.Game;
import com.exercicis.daus.domain.Player;
import com.exercicis.daus.persistence.GameRepository;
import com.exercicis.daus.persistence.PlayerRepository;
import com.exercicis.daus.utilities.PlayerExistsException;
import com.exercicis.daus.utilities.PlayerNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController // This means that this class is a Controller
@RequestMapping(path="")
public class DausController {

    @Autowired
    private PlayerRepository playerRepository;
    @Autowired
    private GameRepository gameRepository;

    // Shows the list of players TODO include stadistics
    @GetMapping(path="/players")
    public @ResponseBody
    Iterable<Player> getAllPlayers() {
        return playerRepository.findAll();
    }

    // Adds one player to the database
    @PostMapping(path="/players")
    public Player newPlayer(@RequestBody Player newPlayer) {
        //System.out.println(newPlayer.getName());
        if ( playerRepository.existsByName(newPlayer.getName()) && !newPlayer.getName().equalsIgnoreCase("anonymous"))
        {
                throw new PlayerExistsException(newPlayer.getName());
        }
        newPlayer.setRate(0.0f);
        return playerRepository.save(newPlayer);
    }

    // Modifies the name of a player in the database
    @PutMapping("/players/{id}")
    Player replacePlayer(@RequestBody Player changePlayer, @PathVariable int id) {
        Player modifiedPlayer = playerRepository.findById(id);
        if (playerRepository.existsById(id)){
            if ( playerRepository.existsByName(changePlayer.getName()) && !changePlayer.getName().equalsIgnoreCase("anonymous"))
            {
                throw new PlayerExistsException(changePlayer.getName());
            }
            modifiedPlayer.setName(changePlayer.getName());
        } else { throw new PlayerNotFoundException(id);}
        return playerRepository.save(modifiedPlayer);
    }

    // Create a new game fo a particular player
    @PostMapping(path="/players/{id}/games")
    public Game throwDices(@PathVariable int id){
        Player myPlayer = playerRepository.findById(id);
        if(myPlayer == null) {
            throw new PlayerNotFoundException(id);
        }
        Game newGame = new Game(myPlayer);
        if (newGame.getWon()){
            myPlayer.setWins(myPlayer.getWins()+1);
            //myPlayer.setRate((float)(myPlayer.getWins()/myPlayer.getPlayed()));
        }
        myPlayer.setPlayed(myPlayer.getPlayed()+1);
        myPlayer.setRate(100*(float)myPlayer.getWins()/myPlayer.getPlayed());
        System.out.println(myPlayer.getRate());
        playerRepository.save(myPlayer);
        return gameRepository.save(newGame);
    }


    // List all games of a particular player
    @GetMapping("/players/{id}/games")
    List<Game> getGamesByPlayer(@PathVariable int id) {
        Player myPlayer = playerRepository.findById(id);
        if(myPlayer == null) {
            throw new PlayerNotFoundException(id);
        }
        return gameRepository.findByPlayer(myPlayer);
    }

    // Delete all games from a particular player
    @DeleteMapping("/players/{id}/games")
    void deleteGames(@PathVariable int id) {
        Player myPlayer = playerRepository.findById(id);
        myPlayer.setWins(0);
        myPlayer.setPlayed(0);
        myPlayer.setRate(0.0f);
        gameRepository.deleteGameByPlayer(myPlayer);
    }

    // Shows the list of players stadistics
    //@GetMapping(path="/players/stats")
    //public @ResponseBody
    //Iterable<PlayerStats> getAllPlayersStats() {
    //    List<PlayerStats> myPlayerStats = new ArrayList <PlayerStats>();
    //    Long active_player = playerRepository.count();
    //    System.out.println(active_player);
    //    for(int i=1;i<=active_player;i++){
    //        Player myPlayer = playerRepository.findById(i);
    //        myPlayerStats.add(myPlayer);
    //    }
    //    return myPlayerStats;
    //}
}
