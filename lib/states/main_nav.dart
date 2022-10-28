import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navigationbargetx/bodys/page_a.dart';
import 'package:navigationbargetx/bodys/page_b.dart';
import 'package:navigationbargetx/bodys/page_c.dart';
import 'package:navigationbargetx/controller/app_controller.dart';

class MainNav extends StatefulWidget {
  const MainNav({super.key});

  @override
  State<MainNav> createState() => _MainNavState();
}

class _MainNavState extends State<MainNav> {
  var widgets = <Widget>[
    const PageA(),
    const PageB(),
    const PageC(),
  ];

  var navigationDestinations = <NavigationDestination>[
    const NavigationDestination(icon: Icon(Icons.filter_1), label: 'PageA'),
    const NavigationDestination(icon: Icon(Icons.filter_2), label: 'PageB'),
    const NavigationDestination(icon: Icon(Icons.filter_3), label: 'PageC'),
  ];

  @override
  Widget build(BuildContext context) {
    return GetX(
      init: AppController(),
      builder: (controller) => Scaffold(
        appBar: AppBar(),
        body: IndexedStack(
          index: controller.navIndex.value,
          children: widgets,
        ),
        bottomNavigationBar: NavigationBar(
         
          selectedIndex: controller.navIndex.value,
          destinations: navigationDestinations,
          onDestinationSelected: (value) {
            controller.navIndex.value = value;
          },
        ),
      ),
    );
  }
}
