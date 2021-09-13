package com.code;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "formValidation", urlPatterns = "/FormValidation")
public class FormValidation extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String name = request.getParameter("book-name");
        String author = request.getParameter("author");
        String price = String.valueOf(request.getParameter("price"));
        String page = String.valueOf(request.getParameter("page"));

        HttpSession session = request.getSession();

        if(name != "" && author != "" && price != "" && page != ""){
            session.removeAttribute("value");
            session.getAttribute("error");
            session.invalidate();
            response.sendRedirect("records.jsp");
        } else {

            String error = "Please enter all the field.";
            Value value = new Value(name, author, price, page);
            session.setAttribute("value", value);
            session.setAttribute("error", error);
            response.sendRedirect("index.jsp");
        }
    }
}
