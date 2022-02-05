import 'Contact.dart';
import 'dart:io';
void main() {
  
List<Contact> contacts = [];

String input = "";

while(input != "Does not matter :P"){

  print("\n======== Main Menu ========");
  print("Enter 1 to add Contact");
  print("Enter 2 to Update Contact");
  print("Enter 3 to List All Contacts");
  print("Enter 4 to Delete a contact");
  stdout.write("Please enter your choice: ");
  String select = stdin.readLineSync()!;

  switch (select) {
    case "1":
      addContact(contacts);
      break;

    case "2":
      updateContact(contacts);
      break;
    
    case "3":
      showAllContacts(contacts);
      break;

    case "4":
      deleteContact(contacts);
      break;
    
    default:
      return;
    
  } // End of switch case

} // End of while loop
  
} // End of main()


void addContact(List<Contact> contact){

  stdout.write("Enter Name: ");
  String name = stdin.readLineSync()!;

  if(name.isEmpty){
    print("Name must not be empty");
    print("Failed to add Contact");
    return;
  }

  int phone;
  try{
    stdout.write("Enter Phone No: ");
    phone = int.parse(stdin.readLineSync()!);

  } catch(e){
      print("Enter integer Value");
      print("Failed to Add Contact");
      return;
  }

  stdout.write("Enter Email: ");
  String email = stdin.readLineSync()!;

  String dob;
  if(email.isEmpty){

    stdout.write("Enter Name: Date of Birth mm-dd-yy: ");
    dob = stdin.readLineSync()!;

    if(dob.isEmpty){
      contact.add(Contact(name: name, phone: phone.toString()));
      return;
    }

    contact.add(Contact(name: name, phone: phone.toString(), dob: dob));


  } // End of if()

  if(email.contains("@")){

    stdout.write("Enter Name: Date of Birth mm-dd-yy: ");
    dob = stdin.readLineSync()!;

    if(dob.isNotEmpty){
      contact.add(Contact(name: name, phone: phone.toString(), email: email, dob: dob));
      return;
    }

    contact.add(Contact(name: name, phone: phone.toString(), email: email));
  }
  else{
    print("Invalid Email");
    print("Failed to Add Contact");
    return;
  }

} // End of addContact()

void updateContact(List<Contact> contact){

  try{
    stdout.write("Enter index: ");
    int index = int.parse(stdin.readLineSync()!); 

    if(index >= 0 && index < contact.length){

      print("\n========Updating At index $index ==========");
      
      stdout.write("Enter Name: ");
      String name = stdin.readLineSync()!;

      int phone;
      try{
        stdout.write("Enter Phone No: ");
        phone = int.parse(stdin.readLineSync()!);

      } catch(e){
          print("Enter integer Value");
          print("Failed to Update Contact");
          return;
      }

      stdout.write("Enter Email: ");
      String email = stdin.readLineSync()!;

      if(!email.contains("@")){
        print("Invalid Email");
        print("Failed to Update Contact");
        return;
      }

      stdout.write("Enter Name: Date of Birth mm-dd-yy: ");
      String dob = stdin.readLineSync()!;

      if(name.isEmpty || email.isEmpty || dob.isEmpty){
        print("Any Details must not be empty");
        print("Failed to Update Contact");
        return;
      }

      contact[index].name = name;
      contact[index].phone = phone.toString();
      contact[index].email = email;
      contact[index].dob = dob;
      
    } // End of if ()
    
    else{
      print("Out of index");
    }

  }catch(e){

    print("Please Enter Integer");
  }
  
} // End of updateContact()

void showAllContacts (List<Contact> contact) {

  if(contact.isNotEmpty){

    for (var i = 0; i < contact.length; i++) {
    
    print("\n======== At $i index ========== ");
    stdout.write("Name: ${contact[i].name}\n");
    stdout.write("Phone: ${contact[i].phone}\n");
    stdout.write("Email: ${contact[i].email}\n");
    stdout.write("Date Of Birth: ${contact[i].dob}\n");
    }

  } 
  else{
    print("Contact Book is Empty");
  }
   
} // End of showAllContacts

void deleteContact(List<Contact> contact){

  try{
      stdout.write("Enter index: ");
      int index = int.parse(stdin.readLineSync()!); 

      if(index >= 0 && index < contact.length){

        print("\n======== Deleteing Contact At index $index ==========");
        stdout.write("Name: ${contact[index].name}\n");
        stdout.write("Phone: ${contact[index].phone}\n");
        stdout.write("Email: ${contact[index].email}\n");
        stdout.write("Date Of Birth: ${contact[index].dob}\n");
        contact.removeAt(index);

        print("Contact deleted successfully");
      } // End of if ()
      
      else{
        print("Out of index");
      }

    }catch(e){

      print("Please Enter Integer");
    }

} // End of deleteContact()