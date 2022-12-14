package model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Book {
    private int id;
    private String title;
    private String description;
    private double price;
    private Author author;
    private String profilePic;


    public Book(String title, String description, double price, int authorId) {
        this.title = title;
        this.description = description;
        this.price = price;
        this.author = author;
    }
}
