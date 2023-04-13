import 'package:flutter/material.dart';
import 'package:smart_tourism/dummy.dart';

import 'logOut_screen.dart';

class MealDetailScreen extends StatelessWidget {
  static const String routeName = "MealDetailScreen";
  final Function toggleFavorite;
  final Function  isFavorite;
  MealDetailScreen(this.toggleFavorite,this.isFavorite);

  @override
  Widget build(BuildContext context) {
    final navArgs =
    ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final mealTitle = navArgs['title'];
    final mealId = navArgs['id'];
    final mealItem = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);
    return Scaffold(
      appBar: AppBar(actions: [Container(padding: EdgeInsets.only(right: 20),
        child: InkWell(onTap:(){Navigator.pushNamed(context, LogOutScreen.id);},
            child: Image.asset('images/tourism.jpg',width: 50,)
        ),),],title: Text(mealTitle.toString())),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              mealItem.imageUrl,
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              'Contact Information',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            SizedBox(
              height: 6,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 35, vertical: 5),
              height: 250,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  // border: Border.all(color: Colors.black,width: 2),
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(20),
              child: ListView.builder(
                  itemCount: mealItem.contactInfo.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Padding(
                          padding: EdgeInsets.only(left: 20, top: 5, bottom: 5),
                          child: Text(
                            "${index + 1}.  ${mealItem.contactInfo[index].toString()}",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          )),
                    );
                  }),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              'About',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 35, vertical: 5),
              height: 250,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black, width: 2)),
              padding: EdgeInsets.all(5),
              child: ListView.builder(
                  itemCount: mealItem.about.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                              backgroundColor:
                              Theme.of(context).colorScheme.primary,
                              child: Text("# ${index + 1}")),
                          title: Padding(
                              padding: EdgeInsets.only(left: 5, top: 5),
                              child: Text(
                                "${mealItem.about[index].toString()}",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              )),
                        ),
                        Divider(
                          color: Colors.black,
                          thickness: 2,
                        )
                      ],
                    );
                  }),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          toggleFavorite(mealId);
        },
        child: Icon(
          isFavorite(mealId)?Icons.favorite:Icons.favorite_border,
          color: Colors.white,
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),

    );
  }
}
