import 'package:flutter/material.dart';
import 'package:food_app/view/profile/component/favourite_food.dart';
import 'package:get/get.dart';

class FavouriteTabView extends StatelessWidget {
  const FavouriteTabView({
    Key? key,
    required this.breakfast,
    required this.lunch,
    required this.intermediateHot,
    required this.dinner,
  }) : super(key: key);

  final String breakfast;
  final String lunch;
  final String intermediateHot;
  final String dinner;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: Get.width,
              child: const Padding(
                padding: EdgeInsets.only(left: 30),
                child: Text(
                  "Services",
                  style: TextStyle(fontSize: 20, color: Colors.white70),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Row(
                  children: const [
                    FavouriteFood(
                      image: "assets/images/img1.jpeg",
                      author: 'Eren',
                      foodName: 'Kurabiye',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    FavouriteFood(
                      image: "assets/images/img2.jpeg",
                      author: 'Berat',
                      foodName: '  Salata',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    FavouriteFood(
                      image: "assets/images/img3.jpeg",
                      author: 'Tayfun',
                      foodName: '    Börek',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    FavouriteFood(
                      image: "assets/images/img4.jpeg",
                      author: 'Mehmet',
                      foodName: 'Kuzu Şiş',
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              width: Get.width,
              child: const Padding(
                padding: EdgeInsets.only(left: 30),
                child: Text(
                  "Dana's expertise",
                  style: TextStyle(color: Colors.white70, fontSize: 20),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: breakfast.length.toDouble() * 10,
                      height: Get.height / 25,
                      decoration: BoxDecoration(
                        borderRadius:
                        const BorderRadius.all(Radius.circular(15.0)),
                        color: Colors.transparent,
                        border: Border.all(
                          color: const Color.fromRGBO(255, 87, 16, 1),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          breakfast,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: lunch.length.toDouble() * 10,
                      height: Get.height / 25,
                      decoration: BoxDecoration(
                        borderRadius:
                        const BorderRadius.all(Radius.circular(15.0)),
                        color: Colors.transparent,
                        border: Border.all(
                          color: const Color.fromRGBO(255, 87, 16, 1),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          lunch,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: intermediateHot.length.toDouble() * 10,
                      height: Get.height / 25,
                      decoration: BoxDecoration(
                        borderRadius:
                        const BorderRadius.all(Radius.circular(15.0)),
                        color: Colors.transparent,
                        border: Border.all(
                          color: const Color.fromRGBO(255, 87, 16, 1),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          intermediateHot,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: dinner.length.toDouble() * 10,
                      height: Get.height / 25,
                      decoration: BoxDecoration(
                        borderRadius:
                        const BorderRadius.all(Radius.circular(15.0)),
                        color: Colors.transparent,
                        border: Border.all(
                          color: const Color.fromRGBO(255, 87, 16, 1),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          dinner,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
