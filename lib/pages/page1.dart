// ignore: unused_import
import 'package:dummy_test_app/pages/page1.dart';
import 'package:flutter/material.dart';

class firspage extends StatelessWidget {
  const firspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('first page'),
      backgroundColor: Colors.blue,),
     bottomNavigationBar: BottomNavigationBar(items: 
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