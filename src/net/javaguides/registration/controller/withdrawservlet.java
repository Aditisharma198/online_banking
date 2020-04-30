package net.javaguides.registration.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import net.javaguides.registration.model.Employee;
import net.javaguides.registration.dao.withdrawdao;



@WebServlet("/withdraw")
public class withdrawservlet extends HttpServlet {
	int u=0;
    private static final long serialVersionUID = 1 ;
    private withdrawdao withdrawdao;

    public void init() {
        withdrawdao = new withdrawdao();
    }

   
/**
* @see HttpServletdoGet(HttpServletRequest request, HttpServletResponse response)
*/
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
// TODO Auto-generated method stub
response.getWriter().append("Served at: ").append(request.getContextPath());

RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/withdraw.jsp");
dispatcher.forward(request, response);

}
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

    	String username = request.getParameter("username");
        String password = request.getParameter("password");
        String accnum=request.getParameter("accountnumber");
    	String firstName = request.getParameter("amount");
        

        Employee employee = new Employee();
        employee.setUsername(username);
        employee.setPassword(password);
        employee.setAccnum(accnum);
        employee.setFirstName(firstName);


        try {
           u=withdrawdao.withdraw(employee);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

if(u==1){
RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/views/showwithdraw.jsp");
dispatcher.forward(request, response);
}else
{
RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/views/wrongdetails.jsp");
dispatcher.forward(request, response);
}

    }
}


