import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:invest_bekia/core/utils/app_colors.dart';
import 'package:invest_bekia/core/utils/app_styles.dart';

class CustomNoteBtmToCollectScrap extends StatelessWidget {
  const CustomNoteBtmToCollectScrap({super.key, required this.onPressed});
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Color(0xffECECEC), width: 1),

        color: Color(0xffffffff),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size(double.infinity, 45),

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          backgroundColor: AppColors.primaryColorOneColor,
        ),
        onPressed: onPressed,
        child: Row(
          children: [
            Icon(IconlyLight.arrow_right, size: 25, color: Colors.white),
            SizedBox(width: 15),
            Text(
              'إجمع خردتك دلوقتي',
              style: TextStyles.font18SemiBold(
                context,
              ).copyWith(color: Colors.white),
            ),
            Spacer(),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff208B59),
              ),
              child: Text(
                'اكسب الارباح',
                style: TextStyles.font14Medium(
                  context,
                ).copyWith(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
