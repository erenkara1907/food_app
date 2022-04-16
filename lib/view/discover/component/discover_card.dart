import 'package:flutter/material.dart';
import 'package:food_app/view/discover/component/discover_model.dart';
import 'package:get/get.dart';

class DiscoverCard extends StatelessWidget {
  final DiscoverModel discover;
  final bool? icon;
  final double? width;
  final double? height;
  final bool static;

  const DiscoverCard({Key? key, required this.discover, this.icon = true, this.width, this.height, this.static = false}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              width: static == true ? width : Get.width / 2.3,
              height: static == true ? height : Get.height / 5.7,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(discover.image!),
                  fit: BoxFit.cover,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
            ),
            icon == true ?
            Positioned(
              left: 5,
              top: 2,
              child: Container(
                width: Get.width / 10,
                height: Get.height / 20,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(255, 87, 16, 1),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Icon(discover.icon,color: Colors.white,),
                    ),
                  ],
                ),
              ),
            )
                : const SizedBox(),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Text(
            discover.foodName!,
            style: const TextStyle(
                color: Colors.white,
                fontFamily: "Roboto",
                fontWeight: FontWeight.w700),
          ),
        ),
        static == false ?
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Text(
            discover.userName!,
            style: const TextStyle(
                color: Colors.deepOrange,
                fontFamily: "Roboto",
                fontWeight: FontWeight.w700),
          ),
        )
            : const SizedBox(),
      ],
    );
  }
}
