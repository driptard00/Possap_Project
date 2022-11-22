import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:possap_project/routes/app_routes_names.dart';

class LeftIndexAuth extends StatelessWidget {
  const LeftIndexAuth({super.key});

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
                onTap: (){},
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
                "Please insert left index",
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
              Container(
                height: 161,
                width: 130,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              InkWell(
                onTap: (){
                  Get.toNamed(submittedSuccessful);
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
              )
            ],
          ),
        ),
      ),
    );
  }
}