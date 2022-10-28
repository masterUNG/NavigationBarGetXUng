import 'package:flutter/material.dart';

class MyConstant {
  TextStyle myStyle({double? size, FontWeight? fontWeight}) => TextStyle(
        fontSize: size ?? 14,
        fontWeight: fontWeight ?? FontWeight.normal,
      );
}
