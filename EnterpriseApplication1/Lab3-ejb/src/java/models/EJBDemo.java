package models;

public interface EJBDemo {
    boolean login(String login, String psw);

    String getMessage (String login);
}
