class IntroPageItem {
  Duration? animationDuration;
  String firstText;
  String secondText;
  String backgroundImage;

  IntroPageItem({
    required this.backgroundImage,
    required this.firstText,
    required this.secondText,
    this.animationDuration,
  });
}