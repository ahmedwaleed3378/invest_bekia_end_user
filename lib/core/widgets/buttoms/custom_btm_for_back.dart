import 'package:flutter/material.dart';

class CustomBtmForBack extends StatelessWidget {
  const CustomBtmForBack({super.key, required this.isExit});
  final bool isExit;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.black, width: 2),
      ),
      child: Icon(
        isExit ? Icons.close : Icons.arrow_back,
        color: Colors.black,
        size: 30,
      ),
    );
  }
}
