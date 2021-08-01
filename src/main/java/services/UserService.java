package services;

import models.Customer;
import models.UserPerson;

import java.util.ArrayList;

public class UserService {
    public ArrayList<UserPerson> listUser = new ArrayList<>();
    public UserService() {
        listUser.add(new UserPerson("admin","admin","administrator"));


    }
    public void save(UserPerson userPerson) {
        listUser.add(userPerson);
    }
    public void edit(UserPerson userPerson, int index) {
        listUser.set(index, userPerson);
    }
    public void delete(int index) {
        listUser.remove(index);
    }
}
