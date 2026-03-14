import 'package:cofee_ui_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

class MainNavScreen extends StatefulWidget {
  const MainNavScreen({super.key});

  @override
  State<MainNavScreen> createState() => _MainNavScreenState();
}

class _MainNavScreenState extends State<MainNavScreen> {
  int currentIndex = 0;
  List<Widget> screens = [HomeScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xffE27D19),
        currentIndex: currentIndex,
        onTap: (selected_index) => setState(() {
          currentIndex = selected_index;
        }),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home)),
          BottomNavigationBarItem(icon: Icon(Icons.favorite)),
          BottomNavigationBarItem(icon: Icon(Icons.card_travel)),
          BottomNavigationBarItem(icon: Icon(Icons.notifications)),
        ],
      ),
      body: screens[currentIndex],
    );
  }
}
