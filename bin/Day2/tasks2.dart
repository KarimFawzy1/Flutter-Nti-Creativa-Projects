void main() {
  // int? productprice = getproductprice("phon");
  print(getproductprice("phon"));
}

int? getproductprice(String productname) {
  if (productname == "phone") {
    return 1000;
  } else
    return null;
}
