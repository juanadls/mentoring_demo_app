import '../../data/models/api_response_result.dart';
import '../../data/models/recipe.dart';
import '../../data/services/network_service.dart';
import '../../data/services/service_constants/service_contants.dart';

class RecipeManager {
  final NetworkService service;

  RecipeManager({
    required this.service,
  });

  Future<ApiResponseResult> getListRecipes() async {
    final response = await service.getRequest(ServiceContants.getEndpoint);

    if (response.statusCode == 200) {
      return ApiResponseResult.success(Recipe(label: 'label', img: 'img'));
    } else {
      ApiResponseResult.error(Exception('Failed to load recipes'));
    }
    return ApiResponseResult.success(Recipe(label: 'label', img: 'img'));
  }
}
