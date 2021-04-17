import 'package:flutter/material.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/widgets/meal_item.dart';

class MealDetailsPage extends StatelessWidget {

  static const routeName = "/Meal-Details-Page";
  

  @override
  Widget build(BuildContext context) {

    final Meal meal = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
        backgroundColor: Theme.of(context).primaryColorDark,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 250,
              child: Image.network(
                meal.imageUrl,
                height: 250,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child : Text("Ingredients", style: Theme.of(context).textTheme.headline6,),
            ),
            Container(
              decoration: BoxDecoration(border: Border.all(color : Colors.yellow,)),
              width: double.infinity,
              height: 200,
              margin: EdgeInsets.all(10),
              child : ListView.builder(
                itemBuilder: (ctx, index) {
                  return Container(
                    decoration: BoxDecoration(border: Border.all(color : Colors.grey)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(meal.ingredients[index]),
                    ),
                  );
                },
                itemCount: meal.ingredients.length,
              ),
            ),
            Divider(),
            Container(
              margin: EdgeInsets.all(10),
              child : Text("Steps", style: Theme.of(context).textTheme.headline6,),
            ),
            Container(
              decoration: BoxDecoration(border: Border.all(color : Colors.yellow,)),
              width: double.infinity,
              height: 200,
              margin: EdgeInsets.all(10),
              child : ListView.builder(
                itemBuilder: (ctx, index) {
                  return Container(
                    child : ListTile(
                      leading: CircleAvatar(
                        child : Text("${index + 1}"),
                      ),
                      title: Text(meal.steps[index]),
                    ),
                    decoration: BoxDecoration(border: Border.all(color : Colors.grey),),
                    margin: EdgeInsets.all(5),
                    
                  );
                },
                itemCount: meal.steps.length,
              ),
            ),
          ],
        ),
      ),

      
    );
  }
}