import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CaptureFingerPrint extends StatelessWidget {
  const CaptureFingerPrint({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xffA5AFD0),
              Color(0xff909FD3),
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          )
        ),
      ),
    );
  }
}