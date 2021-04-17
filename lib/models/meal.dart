import 'package:flutter/foundation.dart';

enum Complexity{
  Simple,
  Challenging,
  Hard,
}

enum Affordability{
  Affordable,
  Pricey,
  Luxurious,
}

class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final Affordability affordability;
  final int duration;
  final List<String> ingredients;
  final Complexity complexity;
  final bool isGlutenFree;
  final bool isVegan;
  final bool isVegetarian;
  final bool isLactoseFree;
  final List<String> steps;


  const Meal({@required this.id, 
  @required this.categories, 
  @required this.title, 
  @required this.imageUrl, 
  @required this.ingredients, 
  @required this.complexity, 
  @required this.affordability, 
  @required this.isGlutenFree,
  @required this.isVegan,
  @required this.isVegetarian,
  @required this.isLactoseFree,
  @required this.duration,
  @required this.steps});
}