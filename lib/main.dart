import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:qr_code_generator/view/navigation.dart';
import 'package:qr_code_generator/view/qr_create_view.dart';
import 'package:qr_code_generator/view/qr_scan_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.light(primary: Colors.blue.shade200),
      ),
      home: const NavigationBarApp(),
    );
  }
}
