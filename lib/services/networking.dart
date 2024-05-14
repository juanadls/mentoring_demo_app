import 'dart:io';

class Networking {

  final String url;
  final HttpClient httpClient;

  Networking({
    required this.url,
    required this.httpClient,
  });

  String get(String data) {
    return "";
  }
}
