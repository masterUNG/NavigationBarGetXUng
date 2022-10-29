import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navigationbargetx/controller/app_controller.dart';
import 'package:navigationbargetx/utility/my_constant.dart';
import 'package:navigationbargetx/widgets/widget_button.dart';
import 'package:navigationbargetx/widgets/widget_text.dart';

class MainHome extends StatefulWidget {
  const MainHome({super.key});

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  @override
  Widget build(BuildContext context) {
    return GetX(
      init: AppController(),
      builder: (controller) => Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              WidgetText(
                text: controller.name.value,
                textStyle: MyConstant().myStyle(size: 36),
              ),
              WidgetText(
                text: controller.navIndex.value.toString(),
                textStyle:
                    MyConstant().myStyle(size: 48, fontWeight: FontWeight.bold),
              ),
              WidgetButton(
                label: 'Increate',
                pressFunc: () {
                  controller.increateNavIndex();
                  controller.name.value = 'time ${controller.navIndex.value}';
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
