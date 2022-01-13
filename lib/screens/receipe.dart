import '../data/meals.dart';
import 'package:flutter/material.dart';

class Reciepe extends StatelessWidget {
  // final String mealTitle;
  // Reciepe({required this.mealTitle});

  Widget SectionTitle(BuildContext ctx, String text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(text, style: Theme.of(ctx).textTheme.headline1),
    );
  }

  Widget MyContainer(Widget child, double height) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      height: height,
      width: 300,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context)?.settings.arguments as String;
    final meal = DUMMY_MEALS.firstWhere((element) => element.id == routeArgs);
    return Scaffold(
        appBar: AppBar(
          title: Text(meal.title),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                child: Image.network(
                  meal.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              SectionTitle(context, 'Ingredients'),
              MyContainer(
                  ListView.builder(
                    itemBuilder: (ctx, index) => Card(
                      color: Theme.of(context).accentColor,
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        child: Text(meal.ingredients[index]),
                      ),
                    ),
                    itemCount: meal.ingredients.length,
                  ),
                  170),
              SectionTitle(context, 'Steps'),
              MyContainer(
                  ListView.builder(
                      itemCount: meal.steps.length,
                      itemBuilder: (ctx, index) => Column(
                            children: [
                              ListTile(
                                leading:
                                    CircleAvatar(child: Text('# ${index + 1}')),
                                title: Text(meal.steps[index]),
                              ),
                              Divider()
                            ],
                          )),
                  200)
            ],
          ),
        ));
  }
}
