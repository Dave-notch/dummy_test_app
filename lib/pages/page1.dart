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
      drawer: Drawer(
        backgroundColor: Colors.brown[400],
        child: Column(
          children: [
            DrawerHeader(child: Icon(
              Icons.favorite,
              size: 24,
            ),
          ),

            ListTile(
              leading: Icon(Icons.home),
              title: Text(
                'H O M E',
                style: TextStyle(
                  color: Colors.white,
                  
                ),
                ),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/Homepage');
              },
            ),
            
            ListTile(
              leading: Icon(Icons.settings),
              title: Text(
                'S E T T I N G S',
                style: TextStyle(
                  color: Colors.white,
                  
                ),
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/Settingspage');
                },
            )
          ],
        ),
      ),
    );
  }
}