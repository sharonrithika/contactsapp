
  // ignore_for_file: avoid_print
  
import 'dart:convert';
import 'dart:async';
import 'package:contacts/services/details.dart';
import 'package:http/http.dart' as http;

//import 'dart:convert';
//import 'package:intl/intl.dart';

class Display{

  String name;
  String email;
  String phone;
  //String website;

  Display({required this.name, required this.email, required this.phone});
  Future<Details> deets()
  async {
  final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
  if(response.statusCode==200){
  return Details.fromJson(jsonDecode(response.body)[0]);
  }
  else{
    throw Exception("Failed to load");
  }
//   Future<void> main() async {
//   // responseBody is the same response.body

//   // When response is a list of objects
//   final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
//   final objects = value.json((e) => Details.fromJson(e));
//   var obj = list[0];
//   print(obj.category);
//   print(obj.fileName);

//   // When response is an object
//   obj = response.body.json((e) => Details.fromJson(e));
//   print(obj.category);
//   print(obj.fileName);
// }

  }
  factory Display.fromJson(Map<String, dynamic> json){
    return Display(
      name: json['name'],
      email: json['email'],
      phone: json['phone'],
    ) ;
  }


}