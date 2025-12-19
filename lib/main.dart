// ignore_for_file: unused_import
import 'package:device_preview/device_preview.dart';
import 'package:dummy_test_app/pages/Home_page.dart';
import 'package:dummy_test_app/pages/gettin_started.dart';
import 'package:dummy_test_app/pages/welcome.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Tododatabase {
  final _mybox = Hive.box('Mybox');

  // First-time launch check
  bool isFirstTime() {
    return _mybox.get('isFirstTime') ?? true;
  }

  // Mark welcome page as seen
  void markFirstTimeSeen() {
    _mybox.put('isFirstTime', false);
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Hive initialization
  await Hive.initFlutter();
  var box = await Hive.openBox('Mybox');

  final db = Tododatabase();

  runApp(
    DevicePreview(
      builder: (context) {
        return MyApp(firstLaunch: db.isFirstTime());
      },
    ),
  );
}

class MyApp extends StatelessWidget {
  final bool firstLaunch;
  const MyApp({super.key, required this.firstLaunch});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),

      // Only change this line: show WelcomePage if first launch
      home: firstLaunch ? const WelcomePage() : const getStarted(),
    );
  }
}
