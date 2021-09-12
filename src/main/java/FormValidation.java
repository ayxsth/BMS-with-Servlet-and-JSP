import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "formValidation", urlPatterns = "/FormValidation")
public class FormValidation extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String name = request.getParameter("book-name");
        String author = request.getParameter("author");
//        int price = Integer.parseInt(request.getParameter("price"));
//        int page = Integer.parseInt(request.getParameter("page"));
        if(name == "" || author == "" || request.getParameter("price") == "" || request.getParameter("page") == ""){
            response.sendRedirect("index.jsp");
        } else {

        }
    }
}
