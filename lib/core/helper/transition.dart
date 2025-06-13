import 'package:flutter/material.dart';

class FadePageTransitionBuilder extends PageTransitionsBuilder {
  @override
  Widget buildTransitions<T>(
    PageRoute<T> route,
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    final curvedAnimation = CurvedAnimation(
      parent: animation,
      curve: Curves.easeInOut,
    );

    return FadeTransition(
      opacity: curvedAnimation,
      child: child,
    );
  }
}
