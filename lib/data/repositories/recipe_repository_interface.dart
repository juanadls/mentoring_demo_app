import '../models/api_response_result.dart';

abstract class RecipeRespositoryInterface {
  Future<ApiResponseResult> obtainlist() async {
    return ApiResponseResult.success([]);
  }
}
