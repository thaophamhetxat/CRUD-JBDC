package services;

import dao.ManagerCustomer;
import models.Customer;

import java.sql.SQLException;
import java.util.ArrayList;

public class CustomerService {
    public ArrayList<Customer> list = new ArrayList<>();

    public CustomerService() {
        try {
            list = (ArrayList<Customer>) ManagerCustomer.select();
        } catch (SQLException | ClassNotFoundException throwables) {
            throwables.printStackTrace();
        }
    }

    public void save(Customer customer) throws SQLException {
        ManagerCustomer.create(customer);
        list.add(customer);
    }

    public void edit(Customer customer,int index) throws SQLException {
       ManagerCustomer.edit(customer);
       list.set(index,customer);
    }

    public void delete(int index) throws SQLException {
        ManagerCustomer.delete(list.get(index).getId());
        list.remove(index);
    }

//    public Customer findById(int id){
//        for (Customer c:list) {
//            if (c.getId() == id){
//                return c;
//            }
//        }
//        return null;
//    }

    public ArrayList<Customer>findByName(String name) throws SQLException {
        return ManagerCustomer.findByName(name);

    }

}
