import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavouriteFood extends StatelessWidget
{
  final String image;
  final String author;
  final String foodName;

  const FavouriteFood({
    Key? key,
    required this.image,
    required this.author,
    required this.foodName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: Get.width / 2.9,
          height: Get.height / 6,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(15.0),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: Get.width / 4,
                height: Get.height / 30,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0),
                  ),
                  color: Color.fromRGBO(255, 87, 16, 1),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      author,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Roboto",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Image.asset(
                        "assets/images/icnFav.png",
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          width: Get.width / 2.9,
          height: Get.height / 30,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(15.0),
              ),
              boxShadow: [
                BoxShadow(
                    color: Colors.black,
                    spreadRadius: 1,
                    blurRadius: 20,
                    offset: Offset(0, 85))
              ]),
        ),
        Positioned(
          top: 90,
          left: 30,
          child: Text(
            foodName,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 17,
              color: Colors.white70,
              fontWeight: FontWeight.bold,
              fontFamily: "Roboto",
            ),
          ),
        ),
      ],
    );
  }
}
