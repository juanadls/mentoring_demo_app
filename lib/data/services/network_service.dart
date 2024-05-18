import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mentoring_demo_app/data/services/service_constants/service_contants.dart';

class NetworkService {
  final String baseUrl;

  NetworkService(this.baseUrl);

  Future<http.Response> getRequest(String request) async {
    final response = await http.get(Uri.parse(ServiceContants.getEndpoint));
    try {
      if (response.statusCode == 200) {
        jsonDecode(response.body);
      }
    } catch (e) {
      e.toString;
    }
    return response;
  }
}
