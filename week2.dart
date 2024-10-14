void main() {
  // Sample list of item prices
  List<double> prices = [25.0, 5.0, 15.0, 8.0, 20.0];

  // Calculate total price with optional tax
  double totalPrice = calculateTotal(prices, tax: 0.1); // 10% tax
  print("Total Price (including tax): \$${totalPrice.toStringAsFixed(2)}");

  // Use an anonymous function to filter out items under $10
  var filteredItems = prices.where((price) => price >= 10).toList();
  print("Filtered Items (Price >= \$10): $filteredItems");

  // Apply discount to all items in the cart
  double discountPercentage = 20.0; // 20% discount
  var discountedPrices = applyDiscount(prices, (price) => price * (1 - discountPercentage / 100));
  print("Prices after Discount: $discountedPrices");

  // Calculate final price after applying discount
  double finalPrice = calculateTotal(discountedPrices, tax: 0.1); // 10% tax
  print("Final Price (after discount and tax): \$${finalPrice.toStringAsFixed(2)}");

  // Calculate special discount using factorial of the number of items
  double specialDiscountPercentage = calculateFactorialDiscount(prices.length);
  print("Special Discount based on Factorial: ${specialDiscountPercentage}%");

  // Apply the special discount to the final price
  finalPrice *= (1 - specialDiscountPercentage / 100);
  print("Final Price (after special discount): \$${finalPrice.toStringAsFixed(2)}");
}

// Standard function to calculate total price with optional tax
double calculateTotal(List<double> itemPrices, {double tax = 0}) {
  double total = itemPrices.fold(0.0, (sum, price) => sum + price);
  return total * (1 + tax);
}

// Higher-order function to apply a discount
List<double> applyDiscount(List<double> prices, double Function(double) discountFunction) {
  return prices.map(discountFunction).toList();
}

// Recursive function to calculate factorial discount
double calculateFactorialDiscount(int n) {
  if (n <= 1) return 1.0; // Base case: 0! and 1! are both 1
  return n * calculateFactorialDiscount(n - 1); // Recursive case
}
