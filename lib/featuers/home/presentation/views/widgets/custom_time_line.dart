import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:invest_bekia/core/utils/app_colors.dart';
import 'package:invest_bekia/core/utils/app_images.dart';

class CustomTimeLine extends StatelessWidget {
  const CustomTimeLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.centerLeft,
        children: [
          Row(
            children: [
              Expanded(
                flex: 5, // نسبة الخط الأخضر
                child: Container(
                  height: 5,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColorOneColor,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
              Expanded(
                flex: 5, // نسبة الخط الرمادي
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    int dashes = (constraints.maxWidth / 10).floor();
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(dashes, (_) {
                        return Container(
                          width: 6,
                          height: 5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Colors.grey.shade300,
                          ),
                        );
                      }),
                    );
                  },
                ),
              ),
            ],
          ),
          Positioned(
            left: MediaQuery.of(context).size.width * 0.5 - 40, // نص الخط
            child: SvgPicture.asset(Assets.imagesMoney),
          ),
        ],
      ),
    );
  }
}
