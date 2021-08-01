package controller;

import models.Customer;
import services.CustomerService;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CustomerServlet", value = "/customer")
public class CustomerServlet extends HttpServlet {
    CustomerService customerService = new CustomerService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        RequestDispatcher requestDispatcher;
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                response.sendRedirect("views/createCustomer.jsp");
                break;

            case "edit":
                int indexEdit = Integer.parseInt(request.getParameter("index"));
                request.setAttribute("customer", customerService.list.get(indexEdit));
                requestDispatcher = request.getRequestDispatcher("views/editCustomer.jsp");
                requestDispatcher.forward(request, response);
                break;

            case "delete":
                int index = Integer.parseInt(request.getParameter("index"));
                try {
                    customerService.delete(index);
                    response.sendRedirect("/customer");
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                break;
            case "find":

            default:
                request.setAttribute("listCustomer", customerService.list);
                requestDispatcher = request.getRequestDispatcher("views/showCustomer.jsp");
                requestDispatcher.forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        RequestDispatcher requestDispatcher;
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                int id = Integer.parseInt(request.getParameter("id"));
                String name = request.getParameter("name");
                String email = request.getParameter("email");
                String address = request.getParameter("address");

                Customer customer = new Customer(id, name, email, address);
                try {
                    customerService.save(customer);
                    request.setAttribute("listCustomer", customerService.list);
                    requestDispatcher = request.getRequestDispatcher("views/showCustomer.jsp");
                    requestDispatcher.forward(request, response);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                break;
            case "edit":
                int idEdit = Integer.parseInt(request.getParameter("id"));
                String nameEdit = request.getParameter("name");
                String emailEdit = request.getParameter("email");
                String addressEdit = request.getParameter("address");

                Customer customerEdit = new Customer(idEdit, nameEdit, emailEdit, addressEdit);

                int index = Integer.parseInt(request.getParameter("index"));
                try {
                    customerService.edit(customerEdit, index);
                    request.setAttribute("listCustomer", customerService.list);
                    requestDispatcher = request.getRequestDispatcher("views/showCustomer.jsp");
                    requestDispatcher.forward(request, response);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                break;
            case "delete":
            case "find":
                String findName = request.getParameter("findName");
                try {
                    request.setAttribute("listCustomer",customerService.findByName(findName));
                    requestDispatcher = request.getRequestDispatcher("views/showCustomer.jsp");
                    requestDispatcher.forward(request, response);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                break;

//                int indexFind = Integer.parseInt(request.getParameter("search"));
//                List<Customer> listCR = new ArrayList<>();
//                for(Customer c:customerService.list){
//                    if(c.getId()==indexFind){
//                        listCR.add(c);
//                    }
//                }
//                request.setAttribute("listCustomer", listCR);
//                requestDispatcher = request.getRequestDispatcher("views/showCustomer.jsp");
//                requestDispatcher.forward(request, response);
            default:
        }
    }

    protected void create(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }



    }
