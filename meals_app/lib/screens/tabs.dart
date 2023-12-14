import 'package:flutter/material.dart';
import 'package:meals_app/screens/categories.dart';
import 'package:meals_app/screens/meals.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() {
    return _TabsScreenState();
  }
}

class _TabsScreenState extends State<TabsScreen> {

  int _selectedPageIndex = 0;

  void _selectPage(int index){
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activePage = const CategoriesScreen();
    var activePageTitle = 'Categories';

    if (_selectedPageIndex == 1){
      activePage = MealsScreen(title: 'Favoutites', meals: []);
      activePageTitle = 'Your Favourates';
    }

   return Scaffold(
    appBar: AppBar(
      title:Text(activePageTitle)
    ),
    body: activePage,
    bottomNavigationBar: BottomNavigationBar(
      onTap: _selectPage,
      items:const  [
        BottomNavigationBarItem(icon: Icon(Icons.set_meal) , label:'Categories', ),
        BottomNavigationBarItem(icon: Icon(Icons.star) , label:'Favourates',),
      ],
    ),
   );
  }
}
