package com.exercicis.daus.utilities;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

@ControllerAdvice
public class PlayerExistsAdvice {
    @ResponseBody
    @ExceptionHandler(PlayerExistsException.class)
    @ResponseStatus(HttpStatus.NOT_FOUND)
    String playerExistsHandler(PlayerExistsException ex) {
        return ex.getMessage();
    }
}
