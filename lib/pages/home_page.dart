import 'package:flutter/material.dart';
import 'package:ontaz/services/category_service.dart';
import 'package:ontaz/widgets/DrawerList.dart';
import 'package:ontaz/widgets/GridCategory.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final categories =  CategoryService().getListCategories();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerList(),
      appBar: AppBar(
        backgroundColor: Color(0xff009fe3),
        elevation: 2,
        title: Text("Hola Armando")),
      body: GridCategory()
    );
  }
}



