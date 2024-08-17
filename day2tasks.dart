
import 'dart:math';
//Task 1 Create a basic class
class Book {
  String title;
  String author;
  int numberOfPages;

  // Constructor
  Book(this.title, this.author, this.numberOfPages);

  // Method to display information
  void displayInfo() {
    print('Title: $title');
    print('Author: $author');
    print('Number of Pages: $numberOfPages');
  }
}

//Task 2 Implement Inheritance
class Novel extends Book {
  String genre;
  //Constructor
  Novel(String title, String auther, int numberOfPages, this.genre)
      : super(title, auther, numberOfPages);
  //Override the displayInfo method to include genre
  @override
  void displayInfo() {
    super.displayInfo();
    print('Genre: $genre');
  }
}

//Task 3 

// Abstract class Shape
abstract class Shape {
  double area();
}

// Circle class implementing Shape
class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() {
    return pi * radius * radius;
  }
}

// Rectangle class implementing Shape
class Rectangle extends Shape {
  double width, height;

  Rectangle(this.width, this.height);

  @override
  double area() {
    return width * height;
  }
}

// Function to demonstrate polymorphism
void printArea(Shape shape) {
  print('Area: ${shape.area()}');
}


void main() {
  // Create an instance of Book
  Book book1 = Book(
      'Murder on the orient Express', 'Agatha Mary Clarissa Christie', 327);

  // Display the book's information
  book1.displayInfo();



  //Create an instance of Novel
  Novel novel1 = Novel('1984','George Orwell', 382 ,'Dystopian');
  //Display the Novel's information
  novel1.displayInfo();



    // Create instances of Circle and Rectangle
  Shape circle = Circle(5);
  Shape rectangle = Rectangle(10, 20);

  // Demonstrate polymorphism
  printArea(circle);       // Area of the circle
  printArea(rectangle);    // Area of the rectangle
}
