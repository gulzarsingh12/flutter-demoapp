import 'package:flutter/material.dart';
import 'package:flutter_demoapp/pages/choose_location.dart';
import 'package:flutter_demoapp/pages/home.dart';
import 'package:flutter_demoapp/pages/loading.dart';

// void main() => runApp(const MaterialApp(
//     home: Home()
//   ));

void main() => runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Loading(),
        '/home': (context) => Home(),
        '/location': (context) => ChooseLocation(),
      },
    ));
