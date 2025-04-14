import 'package:flutter/material.dart';

class CustomCircleProgressIndicator extends StatelessWidget {
  const CustomCircleProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      color: Color(0xff1A6F47),
      backgroundColor: Colors.white,
      strokeWidth: 2.5,
    );
  }
}
