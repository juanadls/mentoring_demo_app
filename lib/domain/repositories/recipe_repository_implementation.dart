import '../../data/models/recipe.dart';
import '../../data/models/api_response_result.dart';
import '../../data/repositories/recipe_repository_interface.dart';
import '../manager/recipe_manager.dart';

class RecipeRepositoryImplementation implements RecipeRespositoryInterface {
  RecipeRepositoryImplementation(this.manager);
  final RecipeManager manager;

  @override
  Future<ApiResponseResult> obtainlist() async {
    await manager.getListRecipes();
    return ApiResponseResult.success(
      Recipe(
        uri: "",
        label: "",
        image: "",
      ),
    );
  }
}
