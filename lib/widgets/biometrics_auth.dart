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
            Container(
              height: 5,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10)
              ),
            ),
            Row(
              children: [
                Image.asset("assets/images/Vector.png"),
                const Text(
                  "Authentication Required",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xff112666),
                    fontSize: 18
                  ),
                ),
              ],
            )
          ]
        ),
      )
    );
  }
}