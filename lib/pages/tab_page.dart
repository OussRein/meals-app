import 'package:flutter/material.dart';
import 'package:meals_app/pages/categories_page.dart';

class TabPage extends StatefulWidget {
  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Meals"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(
                  Icons.category,
                ),
                text: "Categories",
              ),
              Tab(
                icon: Icon(
                  Icons.star,
                ),
                text: "favourites",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            CategoriesPage(),
            CategoriesPage(),
          ],
        ),
      ),
    );
  }
}
