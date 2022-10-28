import 'package:flutter/material.dart';
import 'package:navigationbargetx/utility/my_constant.dart';
import 'package:navigationbargetx/widgets/widget_image.dart';
import 'package:navigationbargetx/widgets/widget_text.dart';

class PageA extends StatelessWidget {
  const PageA({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const WidgetImage(path: 'images/image0.png'),
        WidgetText(
          text: 'PageA',
          textStyle:
              MyConstant().myStyle(size: 48, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
