import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:ontaz/models/service_model.dart';

class ServiceService {

  final String _baseUrl = "https://applicationweb.azurewebsites.net";
  Future<List<Service>> getListServices(int idCategory) async {

    var _path = '/api/Service?IdCategory=$idCategory';
    Uri uri = Uri.parse(_baseUrl + _path);

    final result = await http.get(uri);
    final decodeData = json.decode(result.body);

    final services = Services.fromJsonList( decodeData['data']);
    return services.items.toList();

  }

}