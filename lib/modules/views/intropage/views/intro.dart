import 'package:final_exam_flutter/modules/utils/global/global.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class intro extends StatefulWidget {
  intro({super.key});

  @override
  State<intro> createState() => _introState();
}

class _introState extends State<intro> {
  final List pages = [
    {
      'image': "assets/Illustrations1.png",
      'description': "All your favorites",
      'l1': "Order from the best local restaurants ",
      'l2': "with easy, on-demand delivery.",
    },
    {
      'image': "assets/Illustrations2.png",
      'description': "Free delivery offers",
      'l1': "Free delivery for new customers via Apple Pay ",
      'l2': "and others payment methods.",
    },
    {
      'image': "assets/Illustrations3.png",
      'description': "Choose your food",
      'l1': "Easily find your type of food craving and you’ll ",
      'l2': "get delivery in wide range.",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: Get.height * 0.07,
          ),
          Expanded(
            flex: 1,
            child: Row(
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
          ),
          Expanded(
            flex: 6,
            child: PageView.builder(
              controller: Global.pageController,
              itemCount: pages.length,
              onPageChanged: (index) {
                Global.currentPageIndex = index;
              },
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    SizedBox(
                      height: Get.height * 0.03,
                    ),
                    Image.asset(
                      pages[index]['image'],
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(height: 32.0),
                    const SizedBox(height: 16.0),
                    Text(
                      pages[index]['description'],
                      style: Global.style1,
                    ),
                    Text(
                      pages[index]['l1'],
                      style: Global.style2,
                    ),
                    Text(
                      pages[index]['l2'],
                      style: Global.style2,
                    ),
                    SizedBox(
                      height: Get.height * 0.04,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (int i = 0; i < pages.length; i++)
                          Container(
                            margin: EdgeInsets.all(5),
                            height: 5,
                            width: 10,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              color: i == Global.currentPageIndex
                                  ? Color(0xFF22A45D)
                                  : Colors.grey,
                            ),
                          ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
          Expanded(
              flex: 1,
              child: GestureDetector(
                  onTap: () {
                    Get.toNamed("/login");
                  },
                  child: Global.c1)),
        ],
      ),
    );
  }
}
