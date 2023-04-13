import 'package:flutter/material.dart';
import 'package:smart_tourism/widgets/categoryItem.dart';
import 'package:smart_tourism/dummy.dart';

class CategoriesScreen extends StatelessWidget {
  static const String routeName="CategoriesScreen";

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.only(top: 30,left: 20,right: 20,bottom: 10),
      children: DUMMY_CATEGORIES
          .map((catData) =>
          CategoryItem(title: catData.title, color: catData.color,id: catData.id,))
          .toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 1.2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20),
    );
  }
}
