import 'dart:math';

import 'package:flutter/material.dart';
import 'package:smart_tourism/screens/categories_meals_screen.dart';
import 'package:smart_tourism/screens/categories_screen.dart';
import 'package:smart_tourism/screens/filters_screen.dart';
import 'package:smart_tourism/screens/logOut_screen.dart';
import 'package:smart_tourism/screens/login_screen.dart';
import 'package:smart_tourism/screens/meal_detail_screen.dart';
import 'package:smart_tourism/screens/registration_screen.dart';
import 'package:smart_tourism/screens/tabs_screen.dart';
import 'package:smart_tourism/screens/welcome_screen.dart';

import 'dummy.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String,bool> filters={
    'historical':false,
    'religious':false,
    'amusement':false,
    'entertainment':false,
  };
  List availableMeals=DUMMY_MEALS;
  List favoriteMeals=[];

  void setFilters(Map<String,bool> filterData){
    setState(() {
      filters=filterData;

      availableMeals=DUMMY_MEALS.where((meal) {
        if(filters['historical']! && !meal.isHistorical){
          return false;
        }
        if(filters['religious']! && !meal.isReligious){
          return false;
        }
        if(filters['amusement']! && !meal.isAmusement){
          return false;
        }
        if(filters['entertainment']! && !meal.isEntertainment){
          return false;
        }
        return true;
      }).toList();
    });

  }

  void toggleFavorite(String mealId){
    final existingIndex=favoriteMeals.indexWhere((meal) => meal.id==mealId);
    if(existingIndex>=0){
      setState(() {
        favoriteMeals.removeAt(existingIndex);
      });
    }else{
      setState(() {
        favoriteMeals.add(DUMMY_MEALS.firstWhere((meal) => meal.id==mealId));
      });
    }

  }

  bool isMealFavorite(String id){
    return favoriteMeals.any((meal) => meal.id==id);
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.pink,
          ).copyWith(secondary: Colors.amber)),
      home: Scaffold(
          body: WelcomeScreen()),
      routes: {
        CategoriesMealsScreen.routeName:(context){
          return CategoriesMealsScreen(availableMeals);
        },
        CategoriesScreen.routeName:(context){
          return CategoriesScreen();
        },
        MealDetailScreen.routeName:(context){
          return MealDetailScreen(toggleFavorite,isMealFavorite);
        },
        FiltersScreen.routeName:(context){
          return FiltersScreen(filters,setFilters);
        },
        TabsScreen.routeName:(context){
          return TabsScreen(favoriteMeals);
        },
        LogInScreen.id:(context){
          return LogInScreen();
        },
        WelcomeScreen.id:(context){
          return WelcomeScreen();
        },
        RegistrationScreen.id:(context){
          return RegistrationScreen();
        },
        LogOutScreen.id:(context){
          return LogOutScreen();
        }
      },
    );
  }
}
