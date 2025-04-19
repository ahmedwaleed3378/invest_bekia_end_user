import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:invest_bekia/core/utils/app_images.dart';
import 'package:invest_bekia/core/utils/app_styles.dart';
import 'package:invest_bekia/featuers/notification/data/model/notification_model.dart';
import 'package:invest_bekia/featuers/notification/data/model/notification_style.dart';

class CustomNotifactionItem extends StatefulWidget {
  const CustomNotifactionItem({super.key, required this.notificationModel});
  final NotificationModel notificationModel;

  @override
  State<CustomNotifactionItem> createState() => _CustomNotifactionItemState();
}

class _CustomNotifactionItemState extends State<CustomNotifactionItem> {
  List<NotificationStyle> notifications = [
    NotificationStyle(color: Color(0xffE9F7F1), image: Assets.imagesRight),
    NotificationStyle(
      color: Color(0XFFE5F1F8),
      image: Assets.imagesGreenRecycle,
    ),
    NotificationStyle(color: Color(0XFFFEF6EB), image: Assets.imagesDart),
    NotificationStyle(
      color: Color(0xffFAE5E7),
      image: Assets.imagesShippingCAR,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor:
              widget.notificationModel.style == 0
                  ? notifications[0].color
                  : widget.notificationModel.style == 1
                  ? notifications[1].color
                  : widget.notificationModel.style == 2
                  ? notifications[2].color
                  : notifications[3].color,
          child: SvgPicture.asset(
            widget.notificationModel.style == 0
                ? notifications[0].image
                : widget.notificationModel.style == 1
                ? notifications[1].image
                : widget.notificationModel.style == 2
                ? notifications[2].image
                : notifications[3].image,
            width: 30,
          ),
        ),
        const SizedBox(width: 15),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      widget.notificationModel.title,
                      style: TextStyles.font18SemiBold(context),
                      overflow:
                          TextOverflow.ellipsis, // in case the text is long
                    ),
                  ),
                  Text(
                    widget.notificationModel.time,
                    style: TextStyles.font14Regular(
                      context,
                    ).copyWith(color: const Color(0xff6B6B6B)),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Text(
                widget.notificationModel.description,
                style: TextStyles.font18Medium(
                  context,
                ).copyWith(color: const Color(0xff6B6B6B)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
