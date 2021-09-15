package com.code;

public class Book {
    private String name, author, price, page, id;

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

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Book(String name, String author, String price, String page) {
        this.name = name;
        this.author = author;
        this.price = price;
        this.page = page;
    }

    public Book(String id, String name, String author, String price, String page) {
        this.name = name;
        this.author = author;
        this.price = price;
        this.page = page;
        this.id = id;
    }

    public Book(){

    }

    @Override
    public String toString() {
        return "Book{" +
                "name='" + name + '\'' +
                ", author='" + author + '\'' +
                ", price='" + price + '\'' +
                ", page='" + page + '\'' +
                '}';
    }
}


