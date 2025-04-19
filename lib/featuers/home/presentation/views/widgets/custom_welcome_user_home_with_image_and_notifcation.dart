import 'package:flutter/material.dart';
import 'package:invest_bekia/core/utils/app_images.dart';
import 'package:invest_bekia/core/utils/app_styles.dart';
import 'package:invest_bekia/featuers/home/presentation/views/widgets/custom_notifcation_btm.dart';

class CustomWelcomeUserHeaderWithNotifcation extends StatelessWidget {
  const CustomWelcomeUserHeaderWithNotifcation({
    super.key,
    required this.name,
    required this.notificationCount,
    required this.onTap,
  });
  final String name;
  final int notificationCount;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage(Assets.imagesAvatar),
        ),
        SizedBox(width: 20),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'صباح الخير',
              style: TextStyles.font18SemiBold(
                context,
              ).copyWith(color: Colors.white),
            ),
            SizedBox(height: 5),
            SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.56,

              child: Text(
                'يا $name',
                style: TextStyles.font18Regular(
                  context,
                ).copyWith(color: Colors.white),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
          ],
        ),
        Spacer(),
        CustomNotifactionBtm(
          notificationCount: notificationCount,
          onTap: onTap,
        ),
      ],
    );
  }
}
