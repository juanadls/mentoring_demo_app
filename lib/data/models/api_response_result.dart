import 'recipe.dart';

class ApiResponseResult {
  factory ApiResponseResult.success(List<Recipe> recipes) {
    return ApiResponseResult.success(recipes);
  }

  factory ApiResponseResult.error(Exception error) {
    return ApiResponseResult.error(error);
  }
}
