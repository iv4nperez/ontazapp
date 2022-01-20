
import 'package:flutter/material.dart';
import 'package:ontaz/pages/home_page.dart';

void main(){
  runApp(MyApp());
}



class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ontaz",
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        'home'    : (BuildContext contex) => HomePage(),
      },

    );
  }
}