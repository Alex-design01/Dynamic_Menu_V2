class Product {
  String category;
  String name;
  String? description;
  Product(this.category, this.name, this.description);

  @override
  String toString() {
    // TODO: implement toString
    return "[$category, $name, $description]";
  }
}
