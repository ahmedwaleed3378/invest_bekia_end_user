// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:invest_bekia/core/utils/app_colors.dart';
import 'package:invest_bekia/core/utils/app_styles.dart';

class TimeSelectorWidget extends StatefulWidget {
  const TimeSelectorWidget({super.key});

  @override
  _TimeSelectorWidgetState createState() => _TimeSelectorWidgetState();
}

class _TimeSelectorWidgetState extends State<TimeSelectorWidget> {
  int selectedIndex = -1;

  final List<String> times = [
    "من 6:30 ص إلى 7:30 ص",
    "من 7:30 ص إلى 8:30 ص",
    "من 8:30 ص إلى 9:30 ص",
    "من 9:30 ص إلى 10:30 ص",
    "من 10:30 ص إلى 11:30 ص",
    "من 11:30 ص إلى 12:30 م",
    "من 12:30 م إلى 1:30 م",
    "من 1:30 م إلى 2:30 م",
  ];

  final List<int> disabledIndexes = [0, 4, 5];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        int crossAxisCount = constraints.maxWidth > 600 ? 3 : 2;

        return GridView.builder(
          itemCount: times.length,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 2.8,
          ),
          itemBuilder: (context, index) {
            bool isDisabled = disabledIndexes.contains(index);
            bool isSelected = index == selectedIndex;

            return GestureDetector(
              onTap:
                  isDisabled
                      ? null
                      : () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                curve: Curves.fastOutSlowIn,
                decoration: BoxDecoration(
                  color:
                      isSelected
                          ? AppColors.primaryColorOneColor
                          : Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 12,
                ),
                child: Text(
                  times[index],
                  textAlign: TextAlign.center,
                  style: TextStyles.font14SemiBold(context).copyWith(
                    decoration: isDisabled ? TextDecoration.lineThrough : null,
                    color:
                        isDisabled
                            ? Colors.grey.shade400
                            : isSelected
                            ? Colors.white
                            : Colors.black,
                  ),
                  textDirection: TextDirection.rtl,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
