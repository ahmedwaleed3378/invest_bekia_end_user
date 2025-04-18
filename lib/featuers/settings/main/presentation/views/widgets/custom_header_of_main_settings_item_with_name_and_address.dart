import 'package:flutter/material.dart';
import 'package:invest_bekia/core/utils/app_images.dart';
import 'package:invest_bekia/core/utils/app_styles.dart';

class CustomHeaderOfMainSettingsWithAvatarAndAddress extends StatelessWidget {
  const CustomHeaderOfMainSettingsWithAvatarAndAddress({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.address,
  });
  final String imageUrl, name, address;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(Assets.imagesAvatar),
        ),
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name, style: TextStyles.font18SemiBold(context)),
            SizedBox(height: 5),
            SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.6,

              child: Text(
                address,
                style: TextStyles.font18Regular(
                  context,
                ).copyWith(color: Color(0xff6B6B6B)),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
