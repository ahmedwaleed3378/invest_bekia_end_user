import 'package:flutter/material.dart';
import 'package:invest_bekia/core/utils/app_styles.dart';
import 'package:invest_bekia/featuers/request_sell/presentation/views/widgets/custom_date_picker.dart';
import 'package:invest_bekia/featuers/request_sell/presentation/views/widgets/time_selector_for_req.dart';
import 'package:invest_bekia/featuers/subscribe_plans/presentation/views/widgets/custom_container_of_confirm_address.dart';

class StageTwoInRequestSell extends StatelessWidget {
  const StageTwoInRequestSell({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'اختار المكان اللي هنعدي ناخد منه الخرده',
          style: TextStyles.font20SemiBold(context),
        ),
        SizedBox(height: 15),
        CustomContainerOfConfirmAddress(),

        SizedBox(height: 15),
        Text(
          'اختار اليوم اللي يناسبك',
          style: TextStyles.font20SemiBold(context),
        ),

        SizedBox(height: 15),
        CustomDatePicker(onDateSelected: (value) {}),
        SizedBox(height: 20),
        Text(
          'حدد المعاد اللي هنعدي عليك فيه',
          style: TextStyles.font20SemiBold(context),
        ),
        SizedBox(height: 10),
        TimeSelectorWidget(),
        SizedBox(height: 10),
      ],
    );
  }
}
