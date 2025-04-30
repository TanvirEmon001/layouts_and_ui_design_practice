import 'package:flutter/material.dart';
import 'package:layout_ui/food_card_list.dart';
import 'package:layout_ui/profile_page_screen.dart';
import 'package:layout_ui/travel_destination_card.dart';
import 'package:layout_ui/user_profile_ui.dart';
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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://i.pinimg.com/736x/ce/85/7a/ce857aeeedf9046b3a3fdc9241ee05a9.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage("https://cdn.bio.link/uploads/profile_pictures/2023-07-12/AgGaKWrpdNCHhyaM3lxMag6NpZ3xCNpB.png"),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Hello, Tanvir!",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "tanvir@mail.com",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
                print("Home tapped");
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => UserProfileUi()));
                print("Profile tapped");
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
                print("Settings tapped");
              },
            ),
            ListTile(
              leading: Icon(Icons.logout_outlined),
              title: Text("Logout"),
            )
          ],
        ),
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
