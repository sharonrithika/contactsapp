// ignore_for_file: use_key_in_widget_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:contacts/services/display.dart';

 class Info extends StatefulWidget {
   
   @override
   _InfoState createState() => _InfoState();
 }
 
 class _InfoState extends State<Info> {
    List<Display> info=[
      Display(name: 'Leanne Graham', email: 'Sincere@april.biz',phone: '1-770-736-8031 x56442'),
      Display(name: 'Ervin Howell', email: 'Shanna@melissa.tv',phone: '010-692-6593 x09125'),
      Display(name: 'Clementine Bauch', email: 'Nathan@yesenia.net',phone: '1-463-123-4447'),
      Display(name: 'Patricia Lebsack', email: 'Julianne.OConner@kory.org',phone: '493-170-9623 x156'),
      Display(name: 'Chelsey Dietrich', email: 'Lucio_Hettinger@annie.ca',phone: '(254)954-1289'),
      
    ];
    //  void Contactinfo(index) async {
    //   Display instance= info[index];
    //   Navigator.pop(context,{
    //     'name': instance.name,
    //     'email': instance.email,
    //     'phone': instance.phone,
    //   });
    // }
  

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Colors.white,
       appBar: AppBar(
         backgroundColor: Colors.blue[900],
         title: const Text('Contact Info'),
         centerTitle: true,
         elevation: 0,
       ),
       body: 
       ListView.builder(
         itemCount: info.length,
        itemBuilder: (context, index) {
           return Column(
             children: <Widget>[
             Container(
               padding: const EdgeInsets.fromLTRB(10.0, 20.0, 200, 200),
               color: Colors.blue[900],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [ Text(
                        // ignore: unnecessary_string_interpolations
                        '${info[index].name}',
                        textAlign: TextAlign.end,
                        style: const TextStyle(
                          fontSize: 20.0,
                          color: Colors.white, 
                       ),
                               ),
                      ]
                    ),
                  ],
                ),
               
             ),
             
             Container(
               padding: const EdgeInsets.fromLTRB(10.0, 250, 200, 450),
               color: Colors.white,
               child: Column(
                 //mainAxisAlignment: MainAxisAlignment.,
                children: [
                  Text(
                    '${info[index].phone}',
                    style: const TextStyle(
                      color: Colors.red,
                      fontSize: 28,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    '${info[index].email}',
                    style: const TextStyle(
                      fontSize: 28.0,
                      color: Colors.white,
                    ),
                  )

                ]
                ),
                  )
             
             

             

             ],
             
           );
         }
       ),
       

      

       
     );
   }
 }