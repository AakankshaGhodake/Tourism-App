import 'package:flutter/material.dart';
import 'package:smart_tourism/screens/categories_meals_screen.dart';
import 'package:smart_tourism/screens/categories_screen.dart';
import 'package:smart_tourism/screens/filters_screen.dart';
import 'package:smart_tourism/screens/tabs_screen.dart';

class MainDrawer extends StatelessWidget {
  Widget BuildListTile({required String title, required IconData iconName,required VoidCallback onTap}) {
    return ListTile(
      leading: Icon(
        iconName,
        size: 40,
      ),
      title: Text(
        title,
        style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Theme.of(context).colorScheme.secondary,
          height: 150,
          width: double.infinity,
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(top: 50,left: 20),
          child: Row(
            children: [
              Image.asset(
                'images/tourism.jpg',
                width: 50,
              ),
              SizedBox(width: 10,),
              Text(
                'Wanderlust!',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.w900,color: Colors.red),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
        BuildListTile(title:'Places', iconName:Icons.place,onTap: (){
          Navigator.pushNamed(context, TabsScreen.routeName);
        }),
        BuildListTile(title: 'Filters',iconName:  Icons.settings,onTap: (){
          Navigator.pushNamed(context, FiltersScreen.routeName).then((value) => null);
        })
      ],
    );
  }
}
