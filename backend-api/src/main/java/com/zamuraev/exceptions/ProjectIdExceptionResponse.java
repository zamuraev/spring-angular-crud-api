package com.zamuraev.exceptions;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class ProjectIdExceptionResponse {

    private String message;
    public ProjectIdExceptionResponse(String message) {
        this.message = message;
    }
}
