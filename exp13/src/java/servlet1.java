import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class servlet1 extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter(); 
           
            String user=request.getParameter("user");
            String pass=request.getParameter("pass");
            ServletConfig sc=getServletConfig();
            String user1=sc.getInitParameter("email");
            String pass1=sc.getInitParameter("password");
             if(user1.equals(user) && pass1.equals(pass)){
             out.println("Authorized User");
         }
         else{
             out.println("UN Authorised user");
         }
    }

}
