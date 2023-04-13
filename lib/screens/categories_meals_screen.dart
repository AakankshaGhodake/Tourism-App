import 'package:flutter/material.dart';
import 'package:smart_tourism/dummy.dart';
import 'package:smart_tourism/widgets/mealItem.dart';

import 'logOut_screen.dart';

class CategoriesMealsScreen extends StatefulWidget {
  static const String routeName = "CategoriesMealsScreen";
  final List availableMeals;
  CategoriesMealsScreen(this.availableMeals);
  @override
  State<CategoriesMealsScreen> createState() => _CategoriesMealsScreenState();
}


class _CategoriesMealsScreenState extends State<CategoriesMealsScreen> {
  // final String id;
  late String categoryTitle;
  late List displayedMeals;
  var _loadedData=false;


  void didChangeDependencies() {
    if(_loadedData==false){
      final navArgs =
      ModalRoute
          .of(context)!
          .settings
          .arguments as Map<String, String>;
      final categoryId = navArgs['id'];
      categoryTitle = navArgs['title'].toString();
      displayedMeals = widget.availableMeals.where((meal) {
        return meal.categories.contains(categoryId);
      }).toList();
      super.didChangeDependencies();
      _loadedData=true;
    }
  }

  void removeMeal(String mealId) {
    setState(() {
      displayedMeals.removeWhere((meal) => meal.id == mealId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [Container(padding: EdgeInsets.only(right: 20),
        child: InkWell(onTap:(){Navigator.pushNamed(context, LogOutScreen.id);},
            child: Image.asset('images/tourism.jpg',width: 50,)
        ),),],
        title: Text(categoryTitle.toString()),
      ),
      body: ListView.builder(
          padding: EdgeInsets.all(10),
          itemCount: displayedMeals.length,
          itemBuilder: (context, index) {
            return MealItem(
              id: displayedMeals[index].id,
              title: displayedMeals[index].title,
              duration: displayedMeals[index].duration,
              complexity: displayedMeals[index].complexity,
              affordability: displayedMeals[index].affordability,
              imageUrl: displayedMeals[index].imageUrl,
              // removeItem:removeMeal,
            );
          }),
    );
  }
}
