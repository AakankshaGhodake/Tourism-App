import 'package:flutter/material.dart';

import '../widgets/mealItem.dart';

class FavoritesScreen extends StatelessWidget {

  final List favoriteMeals;
  FavoritesScreen(this.favoriteMeals);
  @override
  Widget build(BuildContext context) {
    if(favoriteMeals.isEmpty){
      return Center(child: Text('No Favorites'),);
    }else{
      return ListView.builder(
          padding: EdgeInsets.all(10),
          itemCount: favoriteMeals.length,
          itemBuilder: (context, index) {
            return MealItem(
              // removeItem: ,
              id: favoriteMeals[index].id,
              title: favoriteMeals[index].title,
              duration: favoriteMeals[index].duration,
              complexity: favoriteMeals[index].complexity,
              affordability: favoriteMeals[index].affordability,
              imageUrl: favoriteMeals[index].imageUrl,);
          });
    }
    return Center(child: Text("This is favorites"),);
  }
}


