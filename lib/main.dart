import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navigationbargetx/controller/app_controller.dart';
import 'package:navigationbargetx/states/main_home.dart';
import 'package:navigationbargetx/states/main_nav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // static AppController controller = Get.put(AppController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'NavigationGetX',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MainHome(),
    );
  }
}
