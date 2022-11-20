import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BiometricsAuthBottomSheet{
  static showBiometricsAuthBottomSheet() {
    Get.bottomSheet(
      Container(
        height: 300,
        width: Get.width,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          )
        ),
        child: Column(
          children: [
            const SizedBox(height: 10,),
            Container(
              height: 5,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10)
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/Vector.png"),
                const SizedBox(width: 15,),
                const Text(
                  "Authentication Required",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/Fingerprint for Login.png",
                  color: const Color(0xff0028AE),
                ),
                const SizedBox(width: 15,),
                const Text(
                  "Touch Fingerprint Sensor",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18
                  ),
                ),
              ],
            ),
          ]
        ),
      )
    );
  }
}