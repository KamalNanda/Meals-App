import 'package:flutter/material.dart';
import '../data/categories.dart';
import '../widgets/category.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "FOOD APP",
            // style: TextStyle(fontFamily: 'Raleway'),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(15),
          child: GridView(
            children: DUMMY_CATEGORIES
                .map((data) => Category(data.title, data.color, data.id))
                .toList(),
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
            ),
          ),
        ));
  }
}
