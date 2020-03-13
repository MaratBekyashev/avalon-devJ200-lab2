/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import javax.annotation.PostConstruct;
import javax.ejb.Stateful;

/**
 *
 * @author JAVA
 */
@Stateful
public class ejbComponent implements EJBDemo{
    private String clientLogin;
    private boolean isRegisteredUser = false;
    Integer counter = 0;
    
    final String STANDART_MESSAGE = "Standart message";
    final String NONSTANDART_MESSAGE = "missing registration";
    
    final String STANDART_LOGIN = "user";
    final String STANDART_PASS = "pass";

    private void setClientType(String login, String psw){
      this.isRegisteredUser = login.equals(STANDART_LOGIN) && 
                              psw.equals(STANDART_PASS);
    }

    @PostConstruct
    void init ()  {
      counter = 0;  
      this.setClientType(STANDART_LOGIN, STANDART_PASS);
    }
    
    @Override
    public String getMessage(String login) {
        this.clientLogin = login;
        String msg;
        if (this.isRegisteredUser){
          msg = STANDART_MESSAGE + ": " + login + "(" + counter+ ")";  
          counter++;          
        }
        else {
            msg = NONSTANDART_MESSAGE;
            counter = 0;
        }
        if (counter > 3)
          this.setClientType("", "");
  
        return msg;
    }

    @Override
    public boolean login(String login, String psw) {
      this.setClientType(login, psw);
      return this.isRegisteredUser;
    }
    
    
}
