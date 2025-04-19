import 'package:flutter/material.dart';
import 'package:invest_bekia/core/utils/app_styles.dart';
import 'package:invest_bekia/featuers/request_sell/presentation/views/widgets/image_upload_box.dart';
import 'package:invest_bekia/featuers/request_sell/presentation/views/widgets/scrap_type_grid_view.dart';

class StageOneInRequsetSell extends StatelessWidget {
  const StageOneInRequsetSell({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('نوع الخُردة', style: TextStyles.font20SemiBold(context)),
        SizedBox(height: 15),
        ScrapTypeGridView(),

        SizedBox(height: 15),
        Text('صور خردتك', style: TextStyles.font20SemiBold(context)),

        SizedBox(height: 15),
        MultiImageUploadBox(),
        SizedBox(height: 20),
      ],
    );
  }
}
