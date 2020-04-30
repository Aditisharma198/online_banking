package net.javaguides.registration.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;
import net.javaguides.registration.model.Employee;


public class withdrawdao {

    public int withdraw(Employee employee) throws ClassNotFoundException {
    String h=employee.getFirstName();
        String INSERT_USERS_SQL = "select username,password,accnum,balance from banking;";
        
        String U="";String P=""; String A=""; 
        String user=employee.getUsername();
        String pass=employee.getPassword();
        String accnum=employee.getAccnum();
        Statement statement = null;
        int result = 0;int o=0;
        ResultSet resultSet = null;
        Class.forName("com.mysql.jdbc.Driver");

        try {
        Connection connection = DriverManager
            .getConnection("jdbc:mysql://localhost:3333/bank?useSSL=false", "root", "root");
        
        statement=connection.createStatement();
        resultSet = statement.executeQuery(INSERT_USERS_SQL);
        while(resultSet.next()){
        U=resultSet.getString("username");
        P=resultSet.getString("password");
        A=resultSet.getString("accnum");
        if(U.equals(user)) {
        if(P.equals(pass)){
        	if(A.equals(accnum)){
        
        o=1;
        String B="";
        B=resultSet.getString("balance");
        int amount=Integer.parseInt(h);
        int y=Integer.parseInt(B);
        int j=amount-y;
        String INSERT_USERS_SQLL = "update banking set balance="+j+" where accnum="+A+";"; 
        statement=connection.createStatement();
        j=statement.executeUpdate(INSERT_USERS_SQLL);
        }
        }
        }
        }
           
        } catch (SQLException e) {
            // process sql exception
            printSQLException(e);
        }
     
return o;
    }
    private static void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}