import 'package:flutter/material.dart';
import 'package:food_app/model/intro_page_item.dart';
import 'package:get/get.dart';

import 'component/fading_sliding.dart';

class WelcomeView extends StatefulWidget {
  @override
  _OnboardState createState() => _OnboardState();
}

class _OnboardState extends State<WelcomeView>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;

  @override
  void initState() {
    _animationController = AnimationController(vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/intro1.png"),
                fit: BoxFit.fill),
          ),
          padding: EdgeInsets.only(top: height * 0.04),
          child: Column(
            children: <Widget>[
              SizedBox(
                width: Get.width,
                child: const Padding(
                  padding: EdgeInsets.only(right: 28.0),
                  child: Text(
                    "SKIP",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Roboto"),
                  ),
                ),
              ),
              Image.asset("assets/images/intro1_logo.png"),
              SizedBox(height: height * 0.30),
              Flexible(
                child: Column(
                  children: [
                    Text(
                      'Hello Cookin Fans.',
                      style: TextStyle(
                        fontSize: width * 0.06,
                        fontFamily: 'Roboto',
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      'The easy way to get healthy recipes  that’s simple to make and  oh so delicious.',
                      style: TextStyle(
                        fontSize: width * 0.04,
                        fontFamily: 'Roboto',
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Browse by mealtime  or ingredient.',
                      style: TextStyle(
                        fontSize: width * 0.04,
                        fontFamily: 'Roboto',
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [Colors.black, Colors.transparent],
              stops: [
                0.1,
                0.20,
              ]
            ),
          ),
        ),
      ],
    );
  }
}
