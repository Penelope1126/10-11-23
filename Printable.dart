abstract class Printable {
  void printData();
}

class Person implements Printable {
  String name;
  int age;

  Person(this.name, this.age);

  @override
  void printData() {
    print('Name: $name, Age: $age');
  }
}

class Product implements Printable {
  String productName;
  double price;

  Product(this.productName, this.price);

  @override
  void printData() {
    print('Product: $productName, Price: \$$price');
  }
}

void printItem<T extends Printable>(T item) {
  item.printData();
}

void main() {
  Person person = Person('John', 25);
  printItem(person);

  Product product = Product('Laptop', 1500.00);
  printItem(product);
}
