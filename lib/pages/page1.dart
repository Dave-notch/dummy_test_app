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
      appBar: AppBar(title: Text(
        'A\'nor',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500
        ),
      
      ),
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
     drawer: Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 19, 105, 88), // background for drawer header
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "𝔸𝕩𝕚𝕤",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),

                SizedBox(height: 10),

                // YOUTUBE STYLE SUBSCRIBE BUTTON
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.red, // YouTube red
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.login, color: Colors.white, size: 20),
                      SizedBox(width: 8),
                      Text(
                        "Sign In",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ListTile(
          leading: Icon(Icons.privacy_tip),
          title: Text(
            'P R I V A C Y',
            style: TextStyle(
              // fontWeight: FontWeight.w700,
            ),
            ),
        ),

        ListTile(
          leading: Icon(Icons.logout),
          title: Text('L O G O U T',
          style: TextStyle(
            color: Colors.black,
          ),
          ),
        )
          
        ],
      ),
    )

    );
  }
}