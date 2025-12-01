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
        
        
        child: Container(
          height: 300,
          width: 300,
          padding: EdgeInsets.all(25),
          decoration: BoxDecoration(
          color: Colors.lightBlueAccent,
          borderRadius: BorderRadius.circular(25)
          
          ),
         child: Text(
          'A\'nor Shuaip', 
          
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,


          ),
         
         ),
          
        

        ),
      ),
      ),
    );
  }
}




