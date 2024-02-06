import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/global/global.dart';

class login extends StatelessWidget {
  const login({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Sign in",
            style: GoogleFonts.robotoSlab(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.chevron_left,
                size: 35,
              )),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  "Welcome to Tamang\nFood Services",
                  style: GoogleFonts.abel(
                    fontWeight: FontWeight.w400,
                    fontSize: 32,
                  ),
                ),
              ),
              SizedBox(
                height: Get.height * 0.01,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  "Enter your Phone number or Email \naddress for sign in. Enjoy your food :)",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ),
              SizedBox(
                height: Get.height * 0.03,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15),
                child: Text(
                  "Email address",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 15.0, right: 15, bottom: 15),
                child: TextFormField(
                  onChanged: (val) {
                    Global.email = val;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15),
                child: Text(
                  "Password",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 15.0, right: 15, bottom: 15),
                child: TextFormField(
                  onChanged: (val) {
                    Global.password = val;
                  },
                ),
              ),
              const Center(
                child: Text(
                  "Forget Password?",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ),
              SizedBox(
                height: Get.height * 0.03,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: Get.height * 0.06,
                  width: Get.width,
                  margin:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 40),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xFFEEA734)),
                  child: const Center(
                    child: Text(
                      "SIGN IN",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: Get.height * 0.01,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Don’t have account?",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  Text(
                    "Create new account.",
                    style: TextStyle(fontSize: 14, color: Color(0xFFEEA734)),
                  ),
                ],
              ),
              SizedBox(
                height: Get.height * 0.01,
              ),
              Center(child: Text("Or", style: TextStyle(fontSize: 16))),
              Container(
                height: Get.height * 0.05,
                width: Get.width,
                margin: EdgeInsets.all(20),
                child: Center(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: Container(
                          height: 20,
                          width: 20,
                          child: Image.asset(
                            "assets/Path.png",
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(2)),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 100.0),
                        child: Text(
                          "CONNECT WITH FACEBOOK",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xFF395998)),
              ),
              Container(
                height: Get.height * 0.05,
                width: Get.width,
                margin: EdgeInsets.only(left: 20, right: 20),
                child: Center(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: Container(
                          height: 20,
                          width: 20,
                          child: Image.asset(
                            "assets/google.png",
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8)),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 100.0),
                        child: Text(
                          "CONNECT WITH GOOGLE",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xFF4285F4)),
              ),
            ],
          ),
        ));
  }
}
