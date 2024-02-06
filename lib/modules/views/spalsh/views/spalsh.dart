import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/global/global.dart';

class spalsh extends StatelessWidget {
  const spalsh({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Image.asset("assets/Circle Background.jpg"),
            Column(
              children: [
                SizedBox(
                  height: Get.height * 0.1,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: Get.width * 0.07,
                    ),
                    Image.asset("assets/g12.png"),
                    SizedBox(
                      width: Get.width * 0.05,
                    ),
                    Text("    Tamang\nFoodService", style: Global.style1),
                  ],
                ),
                SizedBox(
                  height: Get.height * 0.06,
                ),
                Image.asset("assets/Illustration.png"),
                SizedBox(
                  height: Get.height * 0.03,
                ),
                Text(
                  "Welcome",
                  style: Global.style1,
                ),
                SizedBox(
                  height: Get.height * 0.05,
                ),
                Text(
                  "It’s a pleasure to meet you. We are\nexcited that you’re here so let’s get ",
                  style: Global.style2,
                ),
                Text("started!", style: Global.style2),
                Spacer(),
                GestureDetector(
                    onTap: () {
                      Get.toNamed("/intro");
                    },
                    child: Global.c1),
              ],
            ),
          ],
        ));
  }
}
