import 'package:flutter/material.dart';
import 'package:mentoring_demo_app/data/services/network_service.dart';
import 'package:mentoring_demo_app/data/services/service_constants/service_contants.dart';

import '../../domain/manager/recipe_manager.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final RecipeManager _manager = RecipeManager(
        service: NetworkService(
      ServiceContants.getEndpoint,
    ));
    return Scaffold(
      appBar: AppBar(
        title: const Text("Recipe App"),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                _manager.getListRecipes();
              },
              child: const Text(
                "Hit Api",
              ))
        ],
      ),
    );
  }
}
