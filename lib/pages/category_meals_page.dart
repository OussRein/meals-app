import 'package:flutter/material.dart';
import 'package:meals_app/models/category.dart';
import 'package:meals_app/widgets/meal_item.dart';
import '../data.dart';

class CategoryMealsPage extends StatelessWidget {

  //final Category category;

  //CategoryMealsPage(this.category);
  //
  
  


  @override
  Widget build(BuildContext context) {
    final Category category = ModalRoute.of(context).settings.arguments;

    final meals = MEALS.where((meal) {
      return meal.categories.contains(category.id); 
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
        backgroundColor: category.color,
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(meals[index]);
        },
        itemCount: meals.length,
      ),
    );
  }
}