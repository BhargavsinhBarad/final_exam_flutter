import 'package:final_exam_flutter/modules/views/intropage/views/intro.dart';
import 'package:final_exam_flutter/modules/views/login/views/login.dart';
import 'package:final_exam_flutter/modules/views/spalsh/views/spalsh.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    getPages: [
      GetPage(
        name: '/',
        page: () => spalsh(),
      ),
      GetPage(
        name: '/intro',
        page: () => intro(),
      ),
      GetPage(
        name: '/login',
        page: () => login(),
      ),
    ],
  ));
}
