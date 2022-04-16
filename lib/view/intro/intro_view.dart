import 'package:flutter/material.dart';
import 'package:food_app/model/intro_page_item.dart';
import 'package:get/get.dart';

import 'component/fading_sliding.dart';

class IntroView extends StatefulWidget {
  final IntroPageItem? introPageItem;

  const IntroView({Key? key, this.introPageItem}) : super(key: key);

  @override
  _OnboardState createState() => _OnboardState();
}

class _OnboardState extends State<IntroView>
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
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(widget.introPageItem!.backgroundImage),
                fit: BoxFit.fill),
          ),

        ),
        Container(
          decoration:  const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black,
                  Colors.transparent,
                  Colors.black,
                ],
              stops: [
                0.10,
                0.50,
                1.0
              ]
            ),
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
              Image.asset("assets/images/intros_logo.png",color: Colors.white,),
              SizedBox(height: height * 0.33),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(left: 29.0,right: 29.0),
                  child: Column(
                    children: [
                      Text(
                        widget.introPageItem!.firstText,
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
                        widget.introPageItem!.secondText,
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
              ),
            ],
          ),
        ),
      ],
    );
  }
}
