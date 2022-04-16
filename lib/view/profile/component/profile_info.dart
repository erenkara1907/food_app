import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/blur.png"), fit: BoxFit.fill),
      ),
      width: Get.width,
      height: Get.height / 2,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/profile.png"),
                radius: 45,
              ),
              backgroundColor: Color.fromRGBO(255, 87, 16, 0.3),
              radius: 50,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Dana Levi",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Roboto"),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: const [
                    Text(
                      '845',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontFamily: "Roboto"),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "Follower",
                      style: TextStyle(
                          color: Colors.white70, fontFamily: "Roboto"),
                    )
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 4),
                      child: Image.asset("assets/images/stars.png"),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Rating (562)",
                      style: TextStyle(
                          color: Colors.white70, fontFamily: "Roboto"),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  children: const [
                    Text(
                      '30',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: "Roboto"),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "Favourites",
                      style: TextStyle(
                          color: Colors.white70, fontFamily: "Roboto"),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
