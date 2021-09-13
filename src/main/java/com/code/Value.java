package com.code;

public class Value {
    private String name, author, price, page;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getPage() {
        return page;
    }

    public void setPage(String page) {
        this.page = page;
    }

    public Value(String name, String author, String price, String page) {
        this.name = name;
        this.author = author;
        this.price = price;
        this.page = page;
    }
}


