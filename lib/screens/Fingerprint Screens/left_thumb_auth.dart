import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:possap_project/routes/app_routes_names.dart';

import '../../widgets/logout_popup.dart';

class LeftThumbAuth extends StatelessWidget {
  const LeftThumbAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: Get.height,
          width: Get.width,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          color: const Color(0xffD9D9D9),
          child: Column(
            children: [
              const SizedBox(height: 20,),
              InkWell(
                onTap: (){
                  showDialog(
                    context: context, 
                    builder: ((context) => LogoutPopUp())
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      "Logout",
                      style: TextStyle(
                        fontSize: 16
                      ),
                    ),
                    Icon(
                      Icons.logout,
                      color: Color(0xff002DC2),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          flex: 5,
                          child: Container(
                            child: Image.asset(
                              "assets/images/PossapLogo.png",
                              height: 70,
                              width: 70,
                            ),
                          ),
                        ),
                        const SizedBox(width: 20,),
                        Expanded(
                          flex: 10,
                          child: Container(
                            child: Column(
                              children: const [
                                Text(
                                  "POSSAP BIOMETRIC ENROLMENT",
                                  textAlign: TextAlign.center,
                                  maxLines: 2,
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Color(0xff112666)
                                  ),
                                ),
                                Divider(
                                  color: Colors.grey,
                                  thickness: 1,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Image.asset("assets/images/Frame 19.png"),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Please insert left thumb",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.red
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset("assets/images/left and right hand 1.png"),
              const SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  Container(
                    height: 161,
                    width: 130,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      child: Image.asset("assets/images/checked.png")
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: (){
                      // Get.toNamed(rightIndexAuth);
                    },
                    child: Container(
                      height: 50,
                      width: 118,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: const LinearGradient(
                          colors: [
                            Color(0xffFF0000),
                            Color(0xffAF0000),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter
                        )
                      ),
                      child: const Center(
                        child: Text(
                          "Retry",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white
                          ),
                        ),
                      )
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Get.toNamed(leftIndexAuth);
                    },
                    child: Container(
                      height: 50,
                      width: 118,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: const LinearGradient(
                          colors: [
                            Color(0xff112666),
                            Color(0xff032289),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter
                        )
                      ),
                      child: const Center(
                        child: Text(
                          "Continue",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white
                          ),
                        ),
                      )
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}