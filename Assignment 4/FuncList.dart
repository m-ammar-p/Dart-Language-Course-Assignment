import 'dart:io';
void main() {
  
  String input = 'y';
  
  while(input != 'n'){

  stdout.write("Enter Your Favourite Item: ");
  String favItem = stdin.readLineSync()!;

  // Storing return value of checkFavorite() function
  String result = checkFavorite(favItem);

  // Checking if result is not empty (null)
  if(result != ''){
    print("Your Favourite Item ${result} has been found.");
    break;
  }
  else{
    print("Item not Found.");
  }

  stdout.write("Do you want to continue (y/n) ?: ");
  input = stdin.readLineSync()!;

  } // End of While Loop
} // End of main()

String checkFavorite(String searchFor){

  List<String> items = ["MacBook Pro","iPhone 13 Pro","Apple Watch","iMac"];

  for (var item in items) {
    
    // Comparing and Making it Case Insensitive
    if(item.toLowerCase() == searchFor.toLowerCase()){
      return item;
    }
  } // End of for loop
  return '';
} // End of checkFavorite()