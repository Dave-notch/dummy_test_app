import 'package:dummy_test_app/pages/Home.dart';
import 'package:dummy_test_app/pages/profile.dart';
import 'package:dummy_test_app/pages/settings.dart';
import 'package:flutter/material.dart';


class firstpage extends StatefulWidget {
 firstpage({super.key});

  @override
  State<firstpage> createState() => _firstpageState();
}

class _firstpageState extends State<firstpage> {
 int selectedindex=0;

 void bottomNavigationBar(int index) {
  setState(() {
    selectedindex = index;
  });
 }

  final List _pages = [
    Home(),
    Settings(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('first page'),
      backgroundColor: Colors.blue,),
      body: _pages[selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedindex,
        onTap: bottomNavigationBar,
        items: 
      [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.person_3_sharp),
          label: 'profile',
        ),
      
     ]
     ),
    );
  }
}