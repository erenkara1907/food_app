import 'package:flutter/material.dart';

class FadingSliding extends StatelessWidget {
  final AnimationController _animationController;
  final Widget child;
  final Interval interval;

  const FadingSliding({
    Key? key,
    required AnimationController animationController,
    this.interval = const Interval(0.5, 1.0),
    required this.child,
  }) : _animationController = animationController;

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animationController.drive(
        Tween<Offset>(begin: Offset(0, 0.5), end: Offset.zero).chain(
          CurveTween(curve: interval),
        ),
      ),
      child: FadeTransition(
        opacity: _animationController.drive(
          Tween<double>(begin: 0.0, end: 1.0).chain(
            CurveTween(
              curve: interval,
            ),
          ),
        ),
        child: child,
      ),
    );
  }
}