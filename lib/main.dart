import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(builder: (context){
    return const MyApp();
    
 })
    );
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});
    void user(){
      print('user tapped');
    }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 137, 171, 199),
      
      appBar: AppBar(backgroundColor: Colors.blue,
      title: Text(
        'muuse',
        style: TextStyle(
          color: Colors.black,
          
        ),
      
      ),
     leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu,)),
     actions: [IconButton(onPressed: () {}, icon: Icon(Icons.logout,
    color: Colors.white,
    ))
    
],

      ),
      body: Center(
        
        child: GestureDetector(
          onTap: user,
          child: Container(
            height: 200,
            width: 200,
            color: Colors.black,
            child: Center(
              child: Text(
                'Tap me',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            
          
          ),
        ),
        
      ),
      ),
    );
  }
}




