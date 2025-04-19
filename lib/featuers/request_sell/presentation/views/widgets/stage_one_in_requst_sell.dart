import 'package:flutter/material.dart';
import 'package:invest_bekia/core/utils/app_styles.dart';
import 'package:invest_bekia/featuers/request_sell/presentation/views/widgets/image_upload_box.dart';
import 'package:invest_bekia/featuers/request_sell/presentation/views/widgets/scrap_type_grid_view.dart';

class StageOneInRequsetSell extends StatelessWidget {
  const StageOneInRequsetSell({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min, // <== هذه مهمة جداً

      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text('نوع الخُردة', style: TextStyles.font20SemiBold(context)),
        ),
        SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: ScrapTypeGridView(),
        ),
        SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text('صور خردتك', style: TextStyles.font20SemiBold(context)),
        ),
        SizedBox(height: 15),
        MultiImageUploadBox(),
        SizedBox(height: 30),
      ],
    );
  }
}
