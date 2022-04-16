import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabMenu extends StatelessWidget {
  final String text;
  final String image;
  final bool isActive;

  const TabMenu({
    Key? key,
    required this.text,
    required this.image,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height / 13,
      width: Get.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image,
              color: isActive == true
                  ? Colors.white
                  : const Color.fromRGBO(255, 87, 16, 1)),
          const SizedBox(
            height: 5,
          ),
          Text(
            text,
            style: const TextStyle(
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
}
