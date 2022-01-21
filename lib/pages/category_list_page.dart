import 'package:flutter/material.dart';

class CategoryListPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff009fe3),
        elevation: 2,
        title: Text('Category'),
      ),
      body: Center(
        child: Text('No hay datos...'),
      ),
    );
  }
}