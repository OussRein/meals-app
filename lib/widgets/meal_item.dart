import 'package:flutter/material.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/pages/meal_details_page.dart';

class MealItem extends StatelessWidget {
  final Meal meal;

  MealItem(this.meal);

  String get complexity{
    if(meal.complexity == Complexity.Simple) return "Simple";
    else if (meal.complexity == Complexity.Hard) return "Hard";
    else return "Challenging";
  }

  String get affordability{
    if(meal.affordability == Affordability.Affordable) return "Affordable";
    else if (meal.affordability == Affordability.Pricey) return "Pricey";
    else return "Luxurious";
  }

  void selectMeal(BuildContext ctx){
    //Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {return CategoryMealsPage(category);}));
    Navigator.of(ctx).pushNamed(MealDetailsPage.routeName, arguments: meal);
  }

  //oid selectMeal(BuildContext ctx) {
    //Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {return CategoryMealsPage(category);}));
    //Navigator.of(ctx).pushNamed("/category-meals", arguments: category);
  //}
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectMeal(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 4,
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                    child: Image.network(
                      meal.imageUrl,
                      height: 250,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  
                  Positioned(
                    bottom: 20,
                    left: 0,
                    child: Container(
                      width: 220,
                      color: Colors.black54,
                      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                      child: Text(
                        meal.title,
                        style: TextStyle(color: Colors.white, fontSize: 26,),
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding : EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.schedule,),
                        SizedBox(width : 10),
                        Text('${meal.duration} mins'),

                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.work,),
                        SizedBox(width : 10),
                        Text(complexity),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.attach_money),
                        SizedBox(width : 10),
                        Text(affordability),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
