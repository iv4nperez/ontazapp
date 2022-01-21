

import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:ontaz/models/category_model.dart';

class CategoryService {

  final String _baseUrl = "https://applicationweb.azurewebsites.net";
  Future<List<Category>> getListCategories() async {

    const _path = '/api/Category';
    Uri uri = Uri.parse(_baseUrl + _path);

    final result = await http.get(uri);
    final decodeData = json.decode(result.body);

    final categorias =  Categories.fromJsonList( decodeData['data']);
    return categorias.items.toList();

  }

}