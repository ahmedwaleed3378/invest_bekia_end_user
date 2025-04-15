import 'package:flutter/material.dart';
import 'package:invest_bekia/core/utils/app_colors.dart';
import 'package:pinput/pinput.dart';

class MyPinEnterCode extends StatefulWidget {
  const MyPinEnterCode({super.key});

  @override
  State<MyPinEnterCode> createState() => _MyPinEnterCodeState();
}

class _MyPinEnterCodeState extends State<MyPinEnterCode> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final boxCount = 4;
    final spacing = 16.0; // space between boxes

    // Calculate width for each box
    final totalSpacing = spacing * (boxCount - 1);
    final boxWidth =
        (screenWidth - totalSpacing - 40) / boxCount; // 40 for padding

    return Directionality(
      textDirection: TextDirection.ltr,
      child: Pinput(
        length: 4,

        showCursor: true,
        defaultPinTheme: PinTheme(
          width: boxWidth,
          height: 60,
          textStyle: TextStyle(
            fontFamily: 'Changa',

            fontSize: 24,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.green.shade300),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        focusedPinTheme: PinTheme(
          width: boxWidth,
          height: 60,
          textStyle: TextStyle(
            fontSize: 24,
            fontFamily: 'Changa',

            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.primaryColorThreeColor,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        submittedPinTheme: PinTheme(
          width: boxWidth,
          height: 60,
          textStyle: TextStyle(
            fontSize: 24,
            fontFamily: 'Changa',
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.green),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onCompleted: (pin) {},
      ),
    );
  }
}
