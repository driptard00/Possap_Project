import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:possap_project/controllers/facial_biometric_ccontroller.dart';
import 'package:possap_project/widgets/facial_bio_success.dart';

import '../../widgets/fingerprint_submitted.dart';
import '../../widgets/logout_popup.dart';

class FacialBiometricCapture extends StatelessWidget {
  FacialBiometricCapture({super.key});

  final FacialBiometricController _facialBiometricController = Get.put(FacialBiometricController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<FacialBiometricController>(
        builder: (controller) {
          return SafeArea(
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
                                            "POSSAP BIOMETRIC ENROLLMENT",
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
                              const SizedBox(height: 100,),
                              Container(
                                height: 280,
                                width: 255,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.black,
                                  image: DecorationImage(
                                    image: (controller.image != null) 
                                      ? FileImage(controller.image!)
                                      : const AssetImage("assets/images/avatar.png") as ImageProvider,
                                      fit: BoxFit.cover
                                    )
                                ),
                              ),
                              const SizedBox(height: 150,),
                              (controller.image != null)?
                              (
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
                                        showDialog(
                                          context: context, 
                                          builder: ((context) => FacialSubmittedSuccessful())
                                        );
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
                              ):
                              (
                                InkWell(
                                  onTap: (){
                                    controller.getImage(ImageSource.camera);
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
                                        "Capture",
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white
                                        ),
                                      ),
                                    )
                                  ),
                                )
                              )
                      ],
                    ),
                  ),
                ]
              ),
            )
          );
        }
      )
    );
  }
}