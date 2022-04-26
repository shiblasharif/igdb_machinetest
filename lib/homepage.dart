import 'package:flutter/material.dart';
import 'package:machinetest/mainscreen.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> _pages = [
      const MainScreen(),
    ];
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 36, 34, 34),
      body: _pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 25,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(
              Icons.format_align_left_sharp,
            ),
          ),
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.calendar_month_rounded),
          ),
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.favorite_border_outlined),
          ),
        ],
        onTap: (newIndex) {
          setState(() {
            selectedIndex = newIndex;
          });
        },
        currentIndex: selectedIndex,
      ),
    );
  }
}
