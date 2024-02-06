import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Global {
  static TextStyle style1 =
      TextStyle(fontSize: 38, fontWeight: FontWeight.bold);
  static TextStyle style2 = TextStyle(fontSize: 18, color: Colors.grey);

  static Widget c1 = Container(
    height: Get.height * 0.07,
    width: Get.width,
    margin: EdgeInsets.only(left: 20, right: 20, bottom: 40),
    child: Center(
        child: Text(
      "Get Started",
      style: TextStyle(
          color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
    )),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20), color: Color(0xFFEEA734)),
  );

  static int? num;
  static String? email;
  static String? password;
  static PageController pageController = PageController(initialPage: 0);
  static int currentPageIndex = 0;
}
