
  // ignore_for_file: avoid_print
  
import 'package:http/http.dart';
import 'dart:convert';
//import 'package:intl/intl.dart';

class Display{

  String name;
  String email;
  String phone;
  //String website;

  Display({required this.name, required this.email, required this.phone});
  Future<void> deets()
  async {
  Response response = await get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
  Map data= jsonDecode(response.body);
  print(data);
  }


}