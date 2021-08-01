package models;

public class UserPerson {
    private String user;
    private String password;
    private String fullName;

    public UserPerson() {
    }

    public UserPerson(String user, String password, String fullName) {
        this.user = user;
        this.password = password;
        this.fullName = fullName;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }


}
