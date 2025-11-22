//  program that calculates the total price for a list of clothing items (T-Shirts & Pants) with quantity. If the total exceeds $80, apply a 10% discount.
// Each item has: name, price, quantity
// Calculate total price per item and overall total
// Apply 10% discount if overall total > $80

void main() {
  Map<String, Map<String, double>> items = {
    "T-Shirt": {"price": 10, "quantity": 3},
    "Pants": {"price": 20, "quantity": 3}
  };
  double total = 0;
  double tshirtTotal = 0;
  double pantsTotal = 0;

  for (var item in items.entries) {
    total += item.value["price"]! * item.value["quantity"]!;
    if (item.key == "T-Shirt") {
      tshirtTotal += item.value["price"]! * item.value["quantity"]!;
    } else if (item.key == "Pants") {
      pantsTotal += item.value["price"]! * item.value["quantity"]!;
    }
  }

  print("tshirt total: $tshirtTotal");
  print("pants total: $pantsTotal");
  print("total before discount: $total");

  if (total > 80) {
    total = (total * 0.9);
    print("total after discount: $total");
  } else {
    print("no discount available");
  }
}
