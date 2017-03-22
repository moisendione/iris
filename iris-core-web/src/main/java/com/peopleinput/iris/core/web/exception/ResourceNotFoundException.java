package com.peopleinput.iris.core.web.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

/**
 * Created by Yakhya DABO on 13/03/16.
 */
@ResponseStatus(value= HttpStatus.NOT_FOUND, reason="Object Not Found")
public class ResourceNotFoundException extends RuntimeException{
  private static final long serialVersionUID = -3332292346834265371L;

  public ResourceNotFoundException(String objectType, Long id){
    super(String.format("Can't find {} with id= {}"));
  }
}
