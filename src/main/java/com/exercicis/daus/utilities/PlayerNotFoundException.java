package com.exercicis.daus.utilities;

public class PlayerNotFoundException extends RuntimeException{
    public PlayerNotFoundException(int id){
        super("Could not find player " + id);
    }
}
