import 'package:flutter/material.dart';

import '../utility/my_constant.dart';
import '../widgets/widget_image.dart';
import '../widgets/widget_text.dart';

class PageB extends StatelessWidget {
  const PageB({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
         const WidgetImage(path: 'images/image1.png'),
        WidgetText(
          text: 'PageB',
          textStyle: MyConstant().myStyle(size: 48, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}