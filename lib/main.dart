import 'package:flutter/material.dart';
import 'package:meals_app/pages/categories_page.dart';
import 'package:meals_app/pages/category_meals_page.dart';
import 'package:meals_app/pages/meal_details_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.blueGrey,
        fontFamily: "Railway",
        textTheme: ThemeData.light().textTheme.copyWith(
          bodyText1: TextStyle(color: Colors.cyan),
          bodyText2: TextStyle(color: Colors.lightGreen),
          headline6: TextStyle(fontSize: 20, fontWeight: FontWeight.bold , fontFamily: "RebotoCondensed"), 

        ),
      ),
      home: CategoriesPage(),
      routes: {
        "/category-meals" : (ctx) => CategoryMealsPage(),
        MealDetailsPage.routeName :  (ctx) => MealDetailsPage(),
      },
    );
  }
}