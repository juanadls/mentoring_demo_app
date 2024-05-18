import 'package:mentoring_demo_app/data/models/api_response_result.dart';
import 'package:mentoring_demo_app/data/models/recipe.dart';
import 'package:mentoring_demo_app/data/services/network_service.dart';

class ApiClient {
  final NetworkService networkService;

  ApiClient({
    required this.networkService,
  });

  Future<void> createApiRequest() async {}

  Future<ApiResponseResult> getRequestStatus() async {
    return ApiResponseResult.success(Recipe());
  }
}
