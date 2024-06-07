import 'dart:convert';

import '../../data/models/api_response_result.dart';
import '../../data/models/recipe.dart';
import '../../data/services/network_service.dart';
import '../../data/services/service_constants/service_contants.dart';

class RecipeManager {
  final NetworkService service = NetworkService();

  Future getListRecipes() async {
    final response = await service.getRequest(ServiceContants.getEndpoint);
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      List temp = [];

      for (var i in data["hits"]) {
        temp.add(i["recipe"]);
      }
      return Recipe.fromRecipes(temp);
    } else {
      ApiResponseResult.error(Exception('Failed to load recipes'));
    }
    return ApiResponseResult.success([]);
  }
}
