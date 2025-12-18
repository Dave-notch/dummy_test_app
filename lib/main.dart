// ignore_for_file: unused_import
import 'package:device_preview/device_preview.dart';
import 'package:dummy_test_app/pages/Home_page.dart';
import 'package:dummy_test_app/pages/gettin_started.dart';
import 'package:dummy_test_app/pages/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) {
        return const MyApp();
      },
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
      theme: ThemeData(primarySwatch: Colors.green),
      routes: {
        '/Homepage': (context) => HomePage(),
        '/getStarted': (context) => getStarted(),
      },
    );
  }
}
