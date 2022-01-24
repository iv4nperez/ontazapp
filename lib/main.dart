
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ontaz/pages/category_list_page.dart';
import 'package:ontaz/pages/home_page.dart';
import 'package:ontaz/pages/service_detail_page.dart';
import 'package:ontaz/providers/category_current.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Color(0xff009fe3)));
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: ( _ ) => CategoryCurrent(),
        )
      ],
      child: MaterialApp(

        title: "Ontaz",
        theme: ThemeData(
          fontFamily: 'ProductSans'
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: 'home',
        routes: {
          'home'                : (BuildContext contex)  => HomePage(),
          'category_list'       : (BuildContext context) => CategoryListPage(),
          'service_detail'      : (BuildContext context) => ServiceDetailPage()
        },
      ),
    );
  }
}