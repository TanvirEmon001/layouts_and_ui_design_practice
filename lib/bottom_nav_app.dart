import 'package:flutter/material.dart';
import 'package:layout_ui/food_card_list.dart';
import 'package:layout_ui/profile_page_screen.dart';
import 'package:layout_ui/travel_destination_card.dart';
import 'screens/home_screen.dart';
import 'screens/search_screen.dart';
import 'screens/profile_screen.dart';

class BottomNavApp extends StatefulWidget {
  const BottomNavApp({super.key});

  @override
  State<BottomNavApp> createState() => _BottomNavAppState();
}

class _BottomNavAppState extends State<BottomNavApp> {

  int currentIndex = 0;

  final List<Widget> screens = [
    FoodCardList(),
    TravelDestinationCard(),
    ProfilePageScreen(),
  ];

  String getTitle(int index) {
    switch(index) {
      case 0: return 'Home';
      case 1: return 'Search';
      case 2: return 'Profile';
      default: return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(getTitle(currentIndex)),
        backgroundColor: Colors.blueAccent,
      ),
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey.shade300,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        currentIndex: currentIndex,
        onTap: (index){
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Food"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
