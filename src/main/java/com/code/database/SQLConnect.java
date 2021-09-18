package com.code.database;
import com.code.Book;

import java.sql.*;

public class SQLConnect {

    public Connection connect(){
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            return DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/servlet",
                    "root",
                    ""
            );
        } catch (Exception ex){
            ex.printStackTrace();
        }
        return null;
    }

    public int insert(Book book) throws SQLException {
        final String INSERT_QUERY = "INSERT INTO book(book_name, author, price, page) " +
                "VALUES (?,?,?,?)";

        PreparedStatement ps = connect().prepareStatement(INSERT_QUERY);
        ps.setString(1, book.getName().trim());
        ps.setString(2, book.getAuthor().trim());
        ps.setInt(3, Integer.parseInt(book.getPrice().trim()));
        ps.setInt(4, Integer.parseInt(book.getPage().trim()));
        connect().close();
        return ps.executeUpdate();
    }

    public int update(Book book) throws SQLException {
        final String INSERT_QUERY = "UPDATE book SET book_name=?, author=?, price=?, page=? " +
                "WHERE book_id=?";

        PreparedStatement ps = connect().prepareStatement(INSERT_QUERY);
        ps.setString(1, book.getName().trim());
        ps.setString(2, book.getAuthor().trim());
        ps.setInt(3, Integer.parseInt(book.getPrice().trim()));
        ps.setInt(4, Integer.parseInt(book.getPage().trim()));
        ps.setInt(5, Integer.parseInt(book.getId().trim()));
        connect().close();
        return ps.executeUpdate();
    }

}
