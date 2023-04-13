import 'package:flutter/material.dart';
import 'package:smart_tourism/models/meal.dart';
import 'package:smart_tourism/screens/meal_detail_screen.dart';

class MealItem extends StatelessWidget {
  final String id;
  final String title;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  final String imageUrl;
  // final Function removeItem;

  MealItem(
      {required this.id,
      required this.title,
      required this.duration,
      required this.complexity,
      required this.affordability,
      required this.imageUrl,
        // required this.removeItem
      });

  String getComplexity() {
    if (complexity == Complexity.Crowded) {
      return 'Crowded';
    } else if (complexity == Complexity.Intermediate) {
      return 'Intermediate';
    } else if (complexity == Complexity.Remote) {
      return 'Remote';
    } else {
      return 'Unknown';
    }
  }

  String getAffordability() {
    if (affordability == Affordability.Affordable) {
      return 'Affordable';
    } else if (affordability == Affordability.Luxurious) {
      return 'Luxurious';
    } else if (affordability == Affordability.Pricey) {
      return 'Pricey';
    } else {
      return 'Unknown';
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, MealDetailScreen.routeName,
            arguments: {'title': title, 'id': id}).then((result) {
            if(result!=null){
              // removeItem(result);
            }
        });
      },
      child: Card(
        elevation: 4,
        margin: EdgeInsets.all(10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Column(
          children: [
            Stack(children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
                child: Image.network(
                  imageUrl,
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 10,
                child: Container(
                  width: 400,
                  color: Colors.black38,
                  child: Center(
                    child: Text(
                      textAlign: TextAlign.center,
                      title,
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      softWrap: true,
                      // overflow: TextOverFlow.fade,
                    ),
                  ),
                ),
              )
            ]),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.schedule,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text("${duration.toString()} min")
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.people
                      ,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(getComplexity())
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.attach_money,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(getAffordability())
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
