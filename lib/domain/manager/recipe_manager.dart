import '../../data/models/api_response_result.dart';
import '../../data/services/network_service.dart';
import '../../data/services/service_constants/service_contants.dart';

class RecipeManager {
  final NetworkService service = NetworkService();

  Future<ApiResponseResult> getListRecipes() async {
    final response = await service.getRequest(ServiceContants.getEndpoint);

    if (response.statusCode == 200) {
      return ApiResponseResult.success([]);
    } else {
      ApiResponseResult.error(Exception('Failed to load recipes'));
    }
    return ApiResponseResult.success([]);
  }
}
