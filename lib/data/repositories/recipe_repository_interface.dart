import '../models/api_response_result.dart';
import '../models/recipe.dart';

abstract class RecipeRespositoryInterface {
  Future<ApiResponseResult> obtainlist() async {
    return ApiResponseResult.success(Recipe(label: 'label', img: 'img'));
  }
}
