## Assignment 8 | E-Commerce App
**THERE ARE THREE PARTS OF THIS E-COMMERCE APP**
1. Product
2. Cart
3. Order

**Product**\
Create an abstract class named as Product and add some attributes to it like name, stockQuantity, price.\
Then create any class of real world product such as Usb/TShirt/iPhone12 which should extend product and use super constructor to pass name upwards to product class\
Store some products in a list of type Product (Polymorphic relation as we've discussed in last few sessions)

**Cart**\
Make a main menu from which user can select any products from list above like\
int i = 0;\
for(var product in products){\
print("Press ${++i} to select ${product.name} ");\
}\
and then ask for its qty which should be validated as less than stockQuantity from product class and store it in a list called cart.\
List<Product> cart = [];\
cart.add(selectedProduct);\
  
**Order**
Finally ask user to checkout after adding each product to card or continue shopping. If user selects checkout, then ask for name,phone,email and place order and show it like this\
====Your Order====\
2 X USB : total 1000rs\
1 X TShirt : total 1200rs\
=====\
Total Amount : 2200rs\
Thank you for your order\
And then clear the cart list.\
Tip: You can use mixins to implement special features to multiple products like\
class USB with StorageOption{\
@override\
List<String> get storageOptions => ["16GB","32GB"];\
}\
AND\
class iPhone with StorageOption{\
@override\
List<String> get storageOptions => ["256GB","128GB"];\
}\
And show the options when user adding it to cart by checking its type as\
if(product is StorageOption){\
int j = 0;\
for(var option in product.storageOptions){\
print("Press ${++j} for $option");\
}\
}
