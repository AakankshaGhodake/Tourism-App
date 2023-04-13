import 'package:flutter/material.dart';
import 'package:smart_tourism/screens/categories_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  String title;
  Color color;
  String id;

  CategoryItem({required this.title, required this.color,required this.id});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      onTap: (){
        Navigator.pushNamed(context, CategoriesMealsScreen.routeName ,arguments: {
          'id':id,'title':title
        });
      },
      child: Container(
        // padding: EdgeInsets.all(15),
        // margin: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
        child: Center(child: Text(title,style: TextStyle(fontFamily: 'Merriweather',fontSize: 20),)),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: color,
            gradient: LinearGradient(colors: [color.withOpacity(0.3),color],begin: Alignment.topLeft,end: Alignment.bottomRight)),
      ),
    );
  }
}
