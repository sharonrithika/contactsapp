// ignore_for_file: non_constant_identifier_names

//import 'dart:js';

import 'dart:convert';

import 'package:contacts/services/details.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
//import 'dart:convert';
//import 'dart:async';
//import 'package:contacts/services/display.dart';

// ignore: use_key_in_widget_constructors
class Home extends StatefulWidget {
  

  
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  

    // List<Display> info=[
    //   Display(name: 'Leanne Graham', email: 'Sincere@april.biz',phone: '1-770-736-8031 x56442'),
    //   Display(name: 'Ervin Howell', email: 'Shanna@melissa.tv',phone: '010-692-6593 x09125'),
    //   Display(name: 'Clementine Bauch', email: 'Nathan@yesenia.net',phone: '1-463-123-4447'),
    //   Display(name: 'Patricia Lebsack', email: 'Julianne.OConner@kory.org',phone: '493-170-9623 x156'),
    //   Display(name: 'Chelsey Dietrich', email: 'Lucio_Hettinger@annie.ca',phone: '(254)954-1289'),
      
    // ];
  //   func(list)
  //   {
  //     List contacts=[];
  //     for(var contact in contacts)
  //     {
  //       contacts.add(
  //         Details(
  //           name: contact['name'],
  //           email: contact['email'],
  //          phone: contact['phone'],

  //         )
  //       );
  //     }
  // return contacts;
  //   }

    // void Contactinfo(index) async {
    //   Display instance= info[index];
    //   Navigator.push(context,{
    //     'name': instance.name,
    //     'email': instance.email,
    //     'phone': instance.phone,
    //   });
    // }
  
  //Response response = await get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
  //Map<String, dynamic> data= jsonDecode(response.body);
  // ignore: avoid_print
  //print(data);
  Future<Details> deets()
  async {
  final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
  // ignore: avoid_print
  print(response.body);
  return Details.fromJson(jsonDecode(response.body));
  

  }
  late Future<Details> futurealbum;
  
  @override
  void initState(){
    super.initState();
    futurealbum = deets();
   
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Contacts'),
        backgroundColor: Colors.blue[600],
        elevation: 0,
        centerTitle: true,

      ),
      body: FutureBuilder<Details>(
        future: futurealbum,
        builder: (context, snapshot) {
          return ListView.builder( 
            //itemCount: info.length,
            itemBuilder: (context, index){

              if (snapshot.hasData){
              
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
                child: Card(
                  child: ListTile(
                    onTap: (){
                      //Contactinfo(index);
                      Navigator.pushNamed(context, '/info');
                    },
                    title: Text(snapshot.data!.name),
                    leading: CircleAvatar(
                      backgroundColor: Colors.yellow[200],
                    ),
                  ),
                  ),
                  
              );
              
            }
            else if (snapshot.hasError)
            {
              return Text('${snapshot.error}');
            }
            return const CircularProgressIndicator();
            }
          );
        }
      ),
  
        
      
      
    );
  }
}