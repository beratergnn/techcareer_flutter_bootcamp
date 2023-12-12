import 'package:contact_bloc_pattern/ui/views/ana_sayfa.dart';
import 'package:contact_bloc_pattern/ui/views/sepet_sayfa.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List pages = [
    AnaPage(),
    SepetPage(),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: currentIndex,
        unselectedFontSize: 12,
        selectedFontSize: 12,
        onTap: onTap,
        items: [
          BottomNavigationBarItem(
            label: 'Keşfet',
            icon: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: currentIndex == 0
                      ? Colors.blueAccent
                      : Colors.transparent,
                  width: 2,
                ),
              ),
              child: Icon(Icons.home_filled),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Sepetim',
            icon: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: currentIndex == 1
                      ? Colors.blueAccent
                      : Colors.transparent,
                  width: 2,
                ),
              ),
              child: Icon(Icons.shopping_cart),
            ),
          ),
        ],
      ),
    );
  }
}
