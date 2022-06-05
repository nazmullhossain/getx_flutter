import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/views/shopping_page.dart';

import 'controllers/cart_conroller.dart';
import 'controllers/shopping_controller.dart';

void main() {
  final  shoppingcontroller= Get.put(ShoppingController());
  final  cartController= Get.put(CartController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ShoppingPage(),
    );
  }
}
