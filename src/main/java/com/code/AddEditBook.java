package com.code;

import com.code.database.SQLConnect;

import java.sql.SQLException;

public class AddEditBook {
    SQLConnect con = new SQLConnect();

    public int save (Book book) throws SQLException {
        return con.insert(book);
    }

    public int update(Book book) throws SQLException {
        return con.update(book);
    }

}
