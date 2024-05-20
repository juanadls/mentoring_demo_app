import '../../data/models/api_response_result.dart';
import '../../data/models/recipe.dart';
import '../../data/repositories/recipe_repository_interface.dart';
import '../manager/recipe_manager.dart';

class RecipeRepositoryImpl implements RecipeRespositoryInterface {
  final RecipeManager _manager = RecipeManager();

  @override
  Future<ApiResponseResult> obtainlist() async {
    await _manager.getListRecipes();
    return ApiResponseResult.success(<Recipe>[
      Recipe(uri: '', label: '', image: ''),
    ]);
  }
}
