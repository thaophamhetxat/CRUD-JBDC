package controller;


import models.Customer;
import models.UserPerson;
import services.CustomerService;
import services.UserService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "Simple_Login", value = "/loginUser")
public class LoginServlet extends HttpServlet {
    public UserService userService = new UserService();
    public CustomerService customerService = new CustomerService();


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        RequestDispatcher requestDispatcher;
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "login":
                response.sendRedirect("index.jsp");
                break;
            case "homeUser":
                request.setAttribute("listUser", userService.listUser);
                requestDispatcher = request.getRequestDispatcher("viewUsers/homeUser.jsp");
                requestDispatcher.forward(request, response);
                break;
            case "add":
                response.sendRedirect("viewUsers/addUser.jsp");
                break;
            case "createUser":
                response.sendRedirect("viewUsers/createUser.jsp");
                break;
            case "editUser":
                int indexEdit = Integer.parseInt(request.getParameter("index"));
                request.setAttribute("customer", customerService.list.get(indexEdit));
                requestDispatcher = request.getRequestDispatcher("viewUsers/homeUser.jsp");
                requestDispatcher.forward(request, response);
                break;
            case "deleteUser":
                int indexDel = Integer.parseInt(request.getParameter("index"));
                userService.delete(indexDel);
                response.sendRedirect("viewUsers/homeUser.jsp");
                break;
            case "findUser":

            default:
                response.sendRedirect("/customer");
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
            case "login":
                boolean check = false;
                String userLogin = request.getParameter("usernameLogin");
                String passLogin = request.getParameter("passwordLogin");
                List<UserPerson> listUserLogin = new ArrayList<>();
//                duyệt mảng keierm tra giá trị của use và pass
                for (UserPerson u : userService.listUser) {
                    if ((u.getUser().equals(userLogin)) && (u.getPassword().equals(passLogin))) {
                        check = true;
                        break;
                    }
                }
//                đúng thì vào quản lý tài khoản sai vào login
                if (check) {
                    response.sendRedirect("/customer");
                } else {
                    response.sendRedirect("error/loginFalse.jsp");
                }
                break;
            case "add":
                String address = request.getParameter("fullName");
                String user = request.getParameter("user");
                String passw = request.getParameter("password");


                UserPerson userPersonadd = new UserPerson(address, user, passw);
                userService.save(userPersonadd);

                request.setAttribute("listUser", userService.listUser);
                requestDispatcher = request.getRequestDispatcher("viewUsers/homeUser.jsp");
                requestDispatcher.forward(request, response);
                break;
            case "createUser":
                String addressc = request.getParameter("fullName");
                String userc = request.getParameter("user");
                String passwordc = request.getParameter("password");


                UserPerson userPersonCreate = new UserPerson(addressc, userc, passwordc);
                userService.save(userPersonCreate);

                request.setAttribute("listCustomer", customerService.list);
                requestDispatcher = request.getRequestDispatcher("viewUsers/homeUser.jsp");
                requestDispatcher.forward(request, response);
                break;
            case "edit":
                String nameEdit = request.getParameter("fullName");
                String userEdit = request.getParameter("user");
                String passwordEdit = request.getParameter("password");

                UserPerson userPersonEdit = new UserPerson(nameEdit, userEdit, passwordEdit);

                int index = Integer.parseInt(request.getParameter("index"));
                userService.edit(userPersonEdit, index);
                request.setAttribute("listUser", userService.listUser);
                requestDispatcher = request.getRequestDispatcher("viewUsers/homeUser.jsp");
                requestDispatcher.forward(request, response);
                break;
            case "delete":
            case "find":

            default:

        }

    }
}
