import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_animations/simple_animations.dart';

class FadeAnimation extends GetView {
  final double delay;
  final Widget child;

  const FadeAnimation(this.delay, this.child, {super.key});

  @override
  Widget build(BuildContext context) {
    final tween = MovieTween()
      ..tween(
        'opacity',
        Tween(begin: 0.0, end: 1.0),
        duration: 500.milliseconds,
      )
      ..tween(
        'translateY',
        Tween(begin: -30.0, end: 0.0),
        duration: 500.milliseconds,
        curve: Curves.easeOut,
      );

    return PlayAnimationBuilder(
      delay: Duration(milliseconds: (500 * delay).round()),
      duration: tween.duration,
      tween: tween,
      child: child,
      builder: (context, animation, child) => Opacity(
        opacity: animation.get('opacity'),
        child: Transform.translate(
          offset: Offset(
            0,
            animation.get('translateY'),
          ),
          child: child,
        ),
      ),
    );
  }
}
