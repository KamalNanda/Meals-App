import 'package:flutter/material.dart';
import 'package:food_app/screens/favourites.dart';
import 'package:food_app/screens/meals.dart';
import 'package:food_app/screens/receipe.dart';
// import './screens/categories.dart';
import './screens/home.dart';
import './screens/filters.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          // fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
                bodyText1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
                bodyText2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
                headline1: TextStyle(
                    fontSize: 24,
                    // fontFamily: 'RobotoCondensed',
                    fontWeight: FontWeight.bold),
              )),
      home: const Home(),
      routes: {
        // '/': (context) => const Home(),
        '/meals': (context) => Meals(),
        '/meal': (context) => Reciepe(),
        '/filters': (context) => Filters(),
        '/favourites': (context) => Favourites(),
      },
    );
  }
}
