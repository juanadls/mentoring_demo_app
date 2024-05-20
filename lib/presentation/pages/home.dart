import 'package:flutter/material.dart';
import '../../domain/repositories/recipe_repository_impl.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final RecipeRepositoryImpl _implementation = RecipeRepositoryImpl();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Recipe App Sample"),
      ),
      body: FutureBuilder(
        future: _implementation.obtainlist(),
        builder: (BuildContext context, AsyncSnapshot snapshop) {
          if (snapshop.connectionState == snapshop.connectionState) {
            return ListView();
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
