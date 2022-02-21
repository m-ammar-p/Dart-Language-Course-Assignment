import 'dart:io';
import 'allProducts.dart';
import 'product.dart';

void main(List<String> args) {
  
  Usb usb = Usb("KingSton", 12, 600);
  Iphone12 iphone12 = Iphone12("Iphone 12", 7, 120000);
  Iphone12 macbookpro = Iphone12("MacBook Pro M1 Chip", 4, 250000);
  Iphone12 tshirt = Iphone12("T-Shirt", 5, 1200);


  List<Product> products = [usb,iphone12,macbookpro,tshirt];
  List<Product> cart = [];
  List<int> orderQuantity = [];

  String input = "";

  parent:
  while (input != "y") {
    int i = 0;
    print("\n======== Main Menu ========");

    for (var product in products) {
      stdout.write("${++i}: ${product.name}\n");
    }

    stdout.write("Please enter your choice: ");

    try {
      int select = int.parse(stdin.readLineSync()!);

      stdout.write("\nName: ${products[select - 1].name}\n");
      stdout.write("Stock Available: ${products[select - 1].stockQuantity}\n");
      stdout.write("price: ${products[select - 1].price} Rs.\n");

      // Add to cart Cart
      stdout.write("\nEnter Quantity: ");
      int qty = int.parse(stdin.readLineSync()!);

      if (qty >= 1 && qty <= products[select - 1].stockQuantity) {
        orderQuantity.add(qty);
        cart.add(products[select - 1]);
        products[select - 1].stockQuantity -= qty;
      } else {
        print("out of stock");
        continue;
      }
    } // try
    catch (e) {
      print("Please Enter Correct Option");
      continue;
    } // catch()

    child:
    while (true) {
      stdout.write("1: Continue Shopping\n");
      stdout.write("2: Checkout\n");
      stdout.write("Please enter your choice: ");
      String choice = stdin.readLineSync()!;

      switch (choice) {
        case '1':
          break child;

        case '2':
          order(cart, orderQuantity);
          return;

        default:
          break;
      }
    } // End of child while loop

  } // End of Parent while loop
  
} // End of main()

void order(List<Product> cart, List<int> orderQuantity) {
  stdout.write("\n====Your Order====\n");

  int num = 0;
  int totalAmount = 0;

  for (var pro in cart) {
    totalAmount += orderQuantity[num] * pro.price;
    stdout.write(
        "${orderQuantity[num]} X ${pro.name}: total ${orderQuantity[num] * pro.price} Rs.\n");
    num++;
  }
  stdout.write("\nTotal Amount: ${totalAmount} Rs.\nThank you for your order");
  cart = [];

} // End of order()
