import 'package:flutter/material.dart';
import '../../data/services/network_service.dart';
import '../../data/services/service_constants/service_contants.dart';
import '../../domain/manager/recipe_manager.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final RecipeManager manager = RecipeManager(
      service: NetworkService(
        ServiceContants.getEndpoint,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text("Recipe App"),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                manager.getListRecipes();
              },
              child: const Text(
                "Hit Api",
              ))
        ],
      ),
    );
  }
}
