
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryCurrent with ChangeNotifier {

  int _idCategory = 0;
  String _nameCategory= "";

  int get idCategory => _idCategory;
  set idCategory(int value){

    _idCategory = value;
    notifyListeners();
  }

  String get nameCategory => _nameCategory;
  set nameCategory(String value){

    _nameCategory = value;
    notifyListeners();
  }


  void clearCategory() {
    _idCategory = 0;
  }

}