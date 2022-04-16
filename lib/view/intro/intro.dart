import 'package:flutter/material.dart';
import 'package:food_app/model/intro_page_item.dart';
import 'package:food_app/view/intro/intro_view.dart';
import 'package:food_app/view/intro/welcome_view.dart';
import 'package:food_app/view/profile/profile_view.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'component/fading_sliding.dart';

class Intro extends StatefulWidget {
  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> with SingleTickerProviderStateMixin {
  List<IntroPageItem> onboardPageItems = [
    IntroPageItem(
      firstText:
          'Browse hundreds of scrumptious recipes. Save your favourites.',
      secondText:
          'Create a profile with your dietary requirements, your loves and hates. Who likes brussels sprouts anyway?',
      backgroundImage: 'assets/images/intro2.png',
    ),
    IntroPageItem(
      firstText:
          'Plan you weekly meals and buy all your ingredients from your favourite supermarket or deli.',
      secondText: 'Ready, steady, cook!',
      backgroundImage: 'assets/images/intro3.png',
      animationDuration: const Duration(milliseconds: 1100),
    ),
  ];

  PageController? _pageController;

  List<Widget> onboardItems = [];
  double? _activeIndex;
  bool onboardPage = false;
  AnimationController? _animationController;
  Animation? colorAnimation;
  Animation? sizeAnimation;

  @override
  void initState() {
    initializePages(); //initialize pages to be shown
    _pageController = PageController();
    _pageController!.addListener(() {
      setState(() {
        _activeIndex = _pageController!.page;
      });
      print("Active Index: $_activeIndex");
      if (_activeIndex! >= 0.5 && onboardPage == false) {
        setState(() {
          onboardPage = true;
        });
      } else if (_activeIndex! < 0.5) {
        setState(() {
          onboardPage = false;
        });
      }
    });
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1000))
      ..forward();

    colorAnimation = ColorTween(begin: Colors.blue, end: Colors.yellow).animate(_animationController!);
    sizeAnimation = Tween<double>(begin: 100.0, end: 200.0).animate(_animationController!);

    super.initState();
  }

  initializePages() {
    onboardItems.add(WelcomeView());
    onboardPageItems.forEach((onboardPageItem) {
      //adding onboard pages
      onboardItems.add(IntroView(
        introPageItem: onboardPageItem,
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned.fill(
            child: PageView(
              controller: _pageController,
              children: onboardItems,
            ),
          ),
          Positioned(
            bottom: height * 0.10,
            child: SmoothPageIndicator(
              onDotClicked: (value) {
                print('selam');
              },
              controller: _pageController!,
              count: onboardItems.length,
              effect: WormEffect(
                dotWidth: width * 0.02,
                dotHeight: width * 0.02,
                dotColor: Colors.white,
                activeDotColor: const Color.fromRGBO(255, 203, 126, 1),
              ),
            ),
          ),
          _activeIndex == 2.0
              ? Positioned(
                right: width * 0.09,
                bottom: height * 0.09,
                child: AnimatedContainer(
                  duration: const Duration(seconds: 2),
                  child: GestureDetector(
                    onTap: (){
                      Get.to(ProfileView());
                    },
                    child: const Text(
                      "Başla",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
              : Positioned(
                  right: width * 0.09,
                  bottom: height * 0.09,
                  child: const Text(
                    "",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
        ],
      ),
    );
  }
}
