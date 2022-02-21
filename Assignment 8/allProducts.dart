import 'product.dart';
import 'storage.dart';

class Usb extends Product with StorageOption {

  Usb(String name, int stockQuantity, int price) 
  : super(name: name, stockQuantity: stockQuantity, price: price); 

  @override
  List<String> get storageOption => ["16GB, 32GB"];

} // End of Usb Class

class Iphone12 extends Product with StorageOption {

  Iphone12(String name, int stockQuantity, int price) 
  : super(name: name, stockQuantity: stockQuantity, price: price); 

  @override
  List<String> get storageOption => ["128GB, 256GB"];

} // End of Iphone12 Class

class MacBookPro extends Product with StorageOption {

  MacBookPro(String name, int stockQuantity, int price) 
  : super(name: name, stockQuantity: stockQuantity, price: price); 

  @override
  List<String> get storageOption => ["500GB, 1TB"];

} // End of MacBookPro Class

class TShirt extends Product {

  TShirt(String name, int stockQuantity, int price) 
  : super(name: name, stockQuantity: stockQuantity, price: price); 

} // End of TShirt Class