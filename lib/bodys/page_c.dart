import 'package:flutter/material.dart';

import '../utility/my_constant.dart';
import '../widgets/widget_image.dart';
import '../widgets/widget_text.dart';

class PageC extends StatelessWidget {
  const PageC({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
         const WidgetImage(path: 'images/image2.png'),
        WidgetText(
          text: 'PageC',
          textStyle: MyConstant().myStyle(size: 48, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}