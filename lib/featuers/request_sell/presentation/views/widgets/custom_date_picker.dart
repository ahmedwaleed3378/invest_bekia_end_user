import 'package:date_picker_plus/date_picker_plus.dart';
import 'package:flutter/material.dart';
import 'package:invest_bekia/core/utils/app_colors.dart';
import 'package:invest_bekia/core/utils/app_styles.dart';

class CustomDatePicker extends StatelessWidget {
  const CustomDatePicker({super.key, required this.onDateSelected});
  final void Function(DateTime) onDateSelected;

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
      child: SizedBox(
        height: 300,
        child: DatePicker(
          currentDateTextStyle: TextStyles.font20SemiBold(context),
          slidersColor: AppColors.primaryColorOneColor,

          selectedCellTextStyle: TextStyles.font20SemiBold(
            context,
          ).copyWith(color: Colors.white),
          daysOfTheWeekTextStyle: TextStyles.font14SemiBold(context),
          leadingDateTextStyle: TextStyles.font20SemiBold(context),
          enabledCellsTextStyle: TextStyles.font20SemiBold(
            context,
          ).copyWith(color: Color(0xff6B6B6B)),
          disabledCellsTextStyle: TextStyles.font20SemiBold(
            context,
          ).copyWith(color: Color(0xff6B6B6B)),
          selectedCellDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: AppColors.primaryColorOneColor,
          ),
          currentDateDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: AppColors.backGroundColor,
          ),
          padding: const EdgeInsets.all(0),
          initialDate: DateTime.now(),
          maxDate: DateTime(2026, 4, 19),
          minDate: DateTime.now(),
          onDateSelected: (value) {},
        ),
      ),
    );
  }
}
