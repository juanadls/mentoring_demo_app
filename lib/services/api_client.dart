import 'dart:io';
import 'package:mentoring_demo_app/models/api_response_result.dart';
import 'package:mentoring_demo_app/services/networking.dart';

class ApiClient {
  final Networking _networking = Networking(
    url: "url",
    httpClient: HttpClient(),
  );

  Future<ApiResponseResult> getRequestStatus() async {
    return  ApiResponseResult.success("success");
  }
}
