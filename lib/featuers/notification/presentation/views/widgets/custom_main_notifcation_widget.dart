// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:invest_bekia/core/utils/app_colors.dart';
import 'package:invest_bekia/featuers/notification/data/model/notification_model.dart';
import 'package:invest_bekia/featuers/notification/presentation/views/widgets/column_of_no_notification.dart';
import 'package:invest_bekia/featuers/notification/presentation/views/widgets/custom_notification_item.dart';

class CustomMainNotificationWidget extends StatelessWidget {
  CustomMainNotificationWidget({super.key});

  List<NotificationModel> notifications = [
    NotificationModel(
      title: 'طلبك اتسجل بنجاح',
      description:
          'استنى المندوب في المعاد اللي اخترته، وهنتابع معاك لحظة بلحظة.',
      time: 'منذ دقيقتين',
      style: 0,
    ),
    NotificationModel(
      title: 'تم استلام الخردة بنجاح',
      description: 'شكراً ليك! الطلب خلص ورصيدك اتحدّث في المحفظة.',
      time: 'من 5 دقايق',
      style: 1,
    ),
    NotificationModel(
      title: 'قربت تكمّل الهدف',
      description: 'فاضلك 400 جنيه وتاخد أول سهم في الأرض... مستني إيه؟',
      time: 'من ساعة',
      style: 2,
    ),
    NotificationModel(
      title: 'المندوب قرّب يوصل!',
      description: 'خليك جاهز، المندوب هيوصللك خلال دقايق علشان يستلم الخردة.',
      time: 'من 21 ساعة',
      style: 3,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    if (notifications.isEmpty) {
      return const SliverFillRemaining(
        hasScrollBody: false,
        child: ColumnOfNoNotifications(),
      );
    }

    return SliverToBoxAdapter(
      child: Container(
        color: AppColors.primaryColorOneColor,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
          child: Container(
            color: AppColors.backGroundColor,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: const Color(0xffECECEC),
                      width: 1,
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: List.generate(
                      notifications.length,
                      (index) => Column(
                        children: [
                          if (index != 0)
                            const Divider(
                              color: Color(0xffECECEC),
                              thickness: 1,
                              height: 20,
                            ),
                          CustomNotifactionItem(
                            notificationModel: notifications[index],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
