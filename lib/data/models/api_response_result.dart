import 'package:mentoring_demo_app/data/models/recipe.dart';

class ApiResponseResult {
  factory ApiResponseResult.success(Recipe recipe) {
    return ApiResponseResult.success(recipe);
  }

  factory ApiResponseResult.error(Exception error) {
    return ApiResponseResult.error(error);
  }
}
