import 'package:flutter/material.dart';
import 'package:mentoring_demo_app/data/models/recipe.dart';
import 'package:mentoring_demo_app/domain/repositories/recipe_repository_impl.dart';
import 'package:mentoring_demo_app/presentation/widgets/recipe_card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Recipe> _recipes = [];
  final RecipeRepositoryImpl _repositoryImpl = RecipeRepositoryImpl();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Recipe App Sample"),
      ),
      body: FutureBuilder(
        future: _repositoryImpl.obtainlist(),
        builder: (BuildContext context, AsyncSnapshot snapshop) {
          if (snapshop.connectionState == snapshop.connectionState) {
            return ListView.builder(
              itemCount: _recipes.length,
              itemBuilder: (BuildContext context, int index) {
                return RecipeCard(
                  uri: _recipes[index].uri!,
                  label: _recipes[index].label!,
                  image: _recipes[index].image!,
                );
              },
            );
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
