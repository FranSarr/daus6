package com.exercicis.daus.utilities;

public class PlayerExistsException extends RuntimeException{
    public PlayerExistsException(String name) { super("User with name " + name + " already exists");}
}
