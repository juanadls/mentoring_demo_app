import 'package:mentoring_demo_app/data/models/api_response_result.dart';
import 'package:mentoring_demo_app/data/models/recipe.dart';
import 'package:mentoring_demo_app/data/services/network_service.dart';
import 'package:mentoring_demo_app/data/services/service_constants/service_contants.dart';

class RecipeManager {
  final NetworkService service;

  RecipeManager({
    required this.service,
  });

  Future<ApiResponseResult> getListRecipes() async {
    final response = await service.getRequest(ServiceContants.getEndpoint);
    if (response.statusCode == 200) {
      return ApiResponseResult.success(Recipe());
    } else {
      throw Exception('Failed to load recipes');
    }
  }
}
