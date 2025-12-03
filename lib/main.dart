import 'package:device_preview/device_preview.dart';
import 'package:dummy_test_app/pages/page1.dart';
import 'package:dummy_test_app/pages/page2.dart';
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
      home: firspage(),
      // routes: {
      //   '/firstpage' :(context) => firspage(),
      // },
    );
  }
}




