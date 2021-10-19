import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yulia/modules/menu/view/menu_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: MenuPage(),
    );
  }
}
