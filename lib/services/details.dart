//import 'dart:convert';
//import 'package:contacts/services/display.dart';

class Details{
  Details({
    required this.name,
    required this.phone,
    required this.email,
  });
  final String name;
  final String phone;
  final String email;

  factory Details.fromJson(Map<String, dynamic> list){
    
       return Details(
    
      name: list['name'],
      email: list['email'],
      phone: list['phone'],
    ) ;
   // List<Details> contacts=[];
    // for(var contact in list)
    // {
    //   contacts.add(
    //    Details(
    //    name: contact['name'],
    //    email: contact['email'],
    //    phone: contact['phone'],
    //    )
    //   );
    // }
    //return contacts;
    
  }
}