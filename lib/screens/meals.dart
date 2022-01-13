import 'package:flutter/material.dart';
import 'package:food_app/widgets/meal.dart';
import '../data/meals.dart';

class Meals extends StatelessWidget {
  // final String title;
  // const Meals(this.title);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final filteredMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          // return Text(filteredMeals[index].title);
          return Meal(
            title: filteredMeals[index].title,
            imgUrl: filteredMeals[index].imageUrl,
            duration: filteredMeals[index].duration,
            complexity: filteredMeals[index].complexity,
            affordability: filteredMeals[index].affordability,
            id: filteredMeals[index].id,
          );
        },
        itemCount: filteredMeals.length,
      ),
    );
  }
}
