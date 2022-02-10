# Flutter-Course-Assignment
# Dart Language Assignment

### Assignment 4 | Favorite Items

Create a function that can contain the list of your favorite items inside it like\
checkFavorite(String searchFor){\
List<String> items = ["iPhone 13","Dart","Flutter"];\
}\
Then call it in main function and try to pass it an item like\
checkFavorite("Smart Watch");\
So this function should check if the "Smart Watch" exists in your list?\
if true then print "Smart Watch found in the list"\
if false then print "Smart Watch not found in the list"\

### Assignment 6 | Contact Book
Create a contact book.\
When we run the code, it should contain a main menu like this\
======== Main Menu ========\
Enter 1 to add Contact\
Enter 2 to Update Contact\
Enter 3 to List All Contacts\
Enter 4 to Delete a contact\
Please enter your choice:

2. Option 1 Add contact must ask for name,phone,email & Date Of Birth. Email & Date Of Birth will be optional.\

3. Option 2 will take index of the contact and ask you for all the information again to update it. If you leave any option empty, it should not be updated and left as it was.

4. Option 3 List will show all contacts with their data Like below\
Name: James\
Phone: 12345\
Email: hello@world.com\
Date Of Birth : 2-5-1995

5. Option 4 will take index of contact and remove it from list\

6. Any other key should exit the program

NOTE : Email must contain @ & Program should run infinitely unless we want to exit or stop it

A single contact should be a class & List of contacts should contain its type
like\
List<Contact> contacts = [];
