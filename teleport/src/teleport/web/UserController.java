package teleport.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import teleport.dao.UserDao;
import teleport.model.User;

@WebServlet("/register")
public class UserController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private UserDao userDao;

    public void init() {
        userDao = new UserDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        register(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.sendRedirect(request.getContextPath() + "/views/nav/register.jsp");
    }

    private void register(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        //String confirmedPass = request.getParameter("confirmedPassword");
        
        User user = new User();
 
        user.setEmail(email);
        user.setPassword(password);

        userDao.saveUser(user);

        RequestDispatcher dispatcher = request.getRequestDispatcher("/views/client/register_success.jsp");
        dispatcher.forward(request, response);
    }
}