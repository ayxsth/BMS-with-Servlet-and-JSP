package com.code;
import com.code.database.SQLConnect;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "formValidation", urlPatterns = "/FormValidation")
public class FormValidation extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String name = request.getParameter("book-name");
        String author = request.getParameter("author");
        String price = String.valueOf(request.getParameter("price"));
        String page = String.valueOf(request.getParameter("page"));
        String id = String.valueOf(request.getParameter("id"));
        System.out.println(id);
        HttpSession session = request.getSession();
        Book book;

        if(id == null){
            book = new Book(name, author, price, page);
            if(name != "" && author != "" && price != "" && page != ""){
                session.removeAttribute("book");
                session.getAttribute("error");
                session.invalidate();
                AddEditBook addEditBook = new AddEditBook();
                try {
                    if(addEditBook.save(book)>0){
                        System.out.println("Added!");
                        response.sendRedirect("records.jsp");
                    } else {
                        System.out.println("Failed!");
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            } else {
                String error = "Please enter all the field.";
                session.setAttribute("book", book);
                session.setAttribute("error", error);
                response.sendRedirect("index.jsp");
            }
        } else if (id != null) {
            System.out.println(id);
            book = new Book(id, name, author, price, page);
            if(id !="" && name != "" && author != "" && price != "" && page != ""){
                session.removeAttribute("book");
                session.getAttribute("error");
                session.invalidate();
                AddEditBook addEditBook = new AddEditBook();
                try {
                    if(addEditBook.update(book)>0){
                        System.out.println("Updated!");
                        response.sendRedirect("records.jsp");
                    } else {
                        System.out.println("Failed!");
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            } else {
                String error = "Please enter all the field.";
                session.setAttribute("book", book);
                session.setAttribute("error", error);
                response.sendRedirect("update.jsp");
            }
        }
    }
}
