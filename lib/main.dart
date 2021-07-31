//import 'dart:js';

import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/info.dart';

void main() => runApp(MaterialApp(
  home: Home(),
  initialRoute: '/',
  routes: {
   // '/':(context) => Home(),
    '/info':(context) => Info(),
  },
));