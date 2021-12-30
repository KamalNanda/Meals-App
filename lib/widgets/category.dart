import 'package:flutter/material.dart';
import '../screens/meals.dart';

class Category extends StatelessWidget {
  final String title;
  final String id;
  final Color color;
  Category(this.title, this.color, this.id);

  void onClick(BuildContext context, String title) {
    // Navigator.of(context).push(MaterialPageRoute(builder: (_) {
    //   return Meals(title);
    // }));
    Navigator.of(context)
        .pushNamed('/meals', arguments: {'id': id, 'title': title});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onClick(context, title),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: EdgeInsets.all(15),
        child: Text(title, style: Theme.of(context).textTheme.headline1),
        // color: color,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [color.withOpacity(0.7), color],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
