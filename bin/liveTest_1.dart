void main() {

  List<Map> fruits = [
    {'name': 'Apple', 'color': 'Red', 'price': 2.5},
    {'name': 'Banana', 'color': 'Yellow', 'price': 1.0},
    {'name': 'Grapes', 'color': 'Purple', 'price': 3.0}
  ];
  print("Original Fruit Details before Discount:");
  displayFruitDetails(fruits);
  double discount = 10;
  applyPriceDiscount(fruits, discount);

  print("Fruit Details After Applying ${discount}% Discount:");
  displayFruitDetails(fruits);
}

void displayFruitDetails(List<Map> fruits) {
  for (var fruit in fruits) {
    print("Name: ${fruit['name']}, Color: ${fruit['color']}, Price: ${fruit['price'].toStringAsFixed(2)}");
  }
}

void applyPriceDiscount(List<Map> fruits, double discountPercentage) {
  for (var fruit in fruits) {
    double originalPrice = fruit['price'];
    double discountedPrice = originalPrice * (1 - discountPercentage / 100);
    fruit['price'] = discountedPrice;
  }
}