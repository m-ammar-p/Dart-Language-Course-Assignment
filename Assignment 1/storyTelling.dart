void main() {
  
  String name = "Simon";
  String company = "Apple";
  String model = "MacBook Pro";
  String chip = "Apple M1 Pro";
  String ssd = "1TB";
  bool isAvailable = false;
  bool isPaid = false;
  int priceInDollar = 2500;

print(name + " is going to buy his favourite MacBook");
  if((company == "Apple" && model == "MacBook Pro" && chip == "Apple M1 Pro" && (priceInDollar <= 3000 && priceInDollar >= 1000)) && (ssd == "1TB" || ssd == "512GB")){

    isAvailable = true;
    print("Product Details:");
    print("Company Name: " + company);
    print("Model: " + model);
    print("Chip: " + chip);
    print("SSD: " + ssd);
    print("Total: \$" + priceInDollar.toString());
    isPaid = false;
  }
  else {
    print("Product is not available");
  }

  if(isAvailable && isPaid){

    print("Amount to be paid: 000.000");
    print("Thank you for the Purchase");
  }

  else if (isAvailable && !isPaid){

    // Using String Interpolation e.g "any string ${variable}" "
    print("Amount to be paid: \$${priceInDollar}");
    print("Kindly Pay the Amount");
  }




} // end of main()