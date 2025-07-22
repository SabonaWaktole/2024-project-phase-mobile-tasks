import 'package:flutter/material.dart';

PageRouteBuilder animatedPageRoute(Widget page) {
  return PageRouteBuilder(
    transitionDuration: const Duration(milliseconds: 800),
    pageBuilder: (_, __, ___) => page,
    transitionsBuilder: (_, animation, __, child) {
      final rotate = Tween(begin: -1.0, end: 0.0).animate(
        CurvedAnimation(
          parent: animation,
          curve: Curves.easeInOutQuart,
        ),
      );
      final fade = CurvedAnimation(
        parent: animation,
        curve: Curves.easeInOut,
      );
      final scale = Tween<double>(begin: 0.8, end: 1.0).animate(animation);

      return AnimatedBuilder(
        animation: animation,
        builder: (context, child) {
          return Opacity(
            opacity: fade.value,
            child: Transform(
              alignment: Alignment.center,
              transform: Matrix4.identity()
                ..rotateY(rotate.value)
                ..scale(scale.value),
              child: child,
            ),
          );
        },
        child: child,
      );
    },
  );
}
