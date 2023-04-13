import 'package:flutter/material.dart';
import 'package:smart_tourism/screens/categories_screen.dart';
import 'package:smart_tourism/screens/favorites_screen.dart';
import 'package:smart_tourism/screens/logOut_screen.dart';
import 'package:smart_tourism/widgets/mainDrawer.dart';

class TabsScreen extends StatefulWidget {
  static const String routeName = "TabsScreen";
  final List favoriteMeals;
  TabsScreen(this.favoriteMeals);
  @override
  State<TabsScreen> createState() => _TabsScreenState();
}


class _TabsScreenState extends State<TabsScreen> {
  late List<Map<String,Object>> pages;
  int selectedPageIndex=0;
  @override
  void initState() {
    pages=[
      {
        'ScreenName':CategoriesScreen(),
        'title':'Categories'
      },
      {
        'ScreenName':FavoritesScreen(widget.favoriteMeals),
        'title':'Your Favorite'
      }
    ];
    super.initState();
  }

  int pageIndex=0;
  void _selectPage(int index){
    setState(() {
      pageIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Container(padding: EdgeInsets.only(right: 20),
            child: InkWell(onTap:(){Navigator.pushNamed(context, LogOutScreen.id);},
              child: Image.asset('images/tourism.jpg',width: 50,)
            ),),],
        title: Text(pages[pageIndex]['title'].toString()),
      ),
      drawer: Drawer(child: MainDrawer(),),
      body: pages[pageIndex].cast()['ScreenName'],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.pinkAccent,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black54,
          currentIndex: pageIndex,
          // unselectedItemColor: ,

          type: BottomNavigationBarType.shifting,

          onTap: _selectPage,
          items: [
            BottomNavigationBarItem(
                backgroundColor: Colors.pink,
                icon: Icon(Icons.category),
                label: 'Categories'),
            BottomNavigationBarItem(
                backgroundColor: Colors.pink,
                icon: Icon(Icons.favorite),
                label: 'Favorites')
          ]),
    );
  }
}
