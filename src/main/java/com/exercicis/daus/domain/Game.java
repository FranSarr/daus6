package com.exercicis.daus.domain;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.Random;

@Entity(name="Game")
public class Game {
    @Id
    @GeneratedValue(strategy= GenerationType.AUTO,generator="native")
    @GenericGenerator(name = "native",strategy = "native")
    @Column(name="id_game")
    private Integer id;
    private Integer dice1;
    private Integer dice2;
    private Integer dice3;
    private Integer dice4;
    private Integer dice5;
    private Integer dice6;
    private Boolean won;

    @JoinColumn(name ="player_id", nullable = false)
    @ManyToOne(targetEntity = Player.class)
    private Player player;

    public Game() {
    }

    public Game(Player player) {
        this.player = player;

        Random dc1 = new Random();
        Random dc2 = new Random();
        Random dc3 = new Random();
        Random dc4 = new Random();
        Random dc5 = new Random();
        Random dc6 = new Random();
        int roll1 = dc1.nextInt(6)+1;
        int roll2 = dc2.nextInt(6)+1;
        int roll3 = dc3.nextInt(6)+1;
        int roll4 = dc4.nextInt(6)+1;
        int roll5 = dc5.nextInt(6)+1;
        int roll6 = dc6.nextInt(6)+1;

        Boolean all5or6s = roll1>4 && roll2>4 && roll3>4 && roll4>4 && roll5>4 && roll6>4;

        this.dice1 = roll1;
        this.dice2 = roll2;
        this.dice3 = roll3;
        this.dice4 = roll4;
        this.dice5 = roll5;
        this.dice6 = roll6;
        this.won = all5or6s;

    }

    public Game(Integer dice1, Integer dice2, Player player) {
        this.dice1 = dice1;
        this.dice2 = dice2;
        this.player = player;
    }

    public Integer getId() {
        return id;
    }

    public Integer getDice1() {
        return dice1;
    }

    public void setDice1(Integer dice1) {
        this.dice1 = dice1;
    }

    public Integer getDice2() {
        return dice2;
    }

    public void setDice2(Integer dice2) {
        this.dice2 = dice2;
    }

    public Integer getDice3() {
        return dice3;
    }

    public void setDice3(Integer dice3) {
        this.dice3 = dice3;
    }

    public Integer getDice4() {
        return dice4;
    }

    public void setDice4(Integer dice4) {
        this.dice4 = dice4;
    }

    public Integer getDice5() {
        return dice5;
    }

    public void setDice5(Integer dice5) {
        this.dice5 = dice5;
    }

    public Integer getDice6() {
        return dice6;
    }

    public void setDice6(Integer dice6) {
        this.dice6 = dice6;
    }

    public Boolean getWon() {
        return won;
    }

    public void setWon(Boolean won) {
        this.won = won;
    }

    public Player getPlayer() {
        return player;
    }

    public void setPlayer(Player player) {
        this.player = player;
    }
}
