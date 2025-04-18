// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:invest_bekia/core/utils/app_colors.dart';
import 'package:invest_bekia/core/utils/app_images.dart';
import 'package:invest_bekia/core/utils/app_styles.dart';
import 'package:invest_bekia/featuers/orders/data/model/order_model.dart';
import 'package:invest_bekia/featuers/orders/presentation/views/widgets/column_of_order_details.dart';

class CustomContainerOfOrder extends StatelessWidget {
  const CustomContainerOfOrder({super.key, required this.orderModel});
  final OrderModel orderModel;

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
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: AppColors.secondaryColorOneColor.withOpacity(
                  0.2,
                ),
                child: SvgPicture.asset(Assets.imagesPackage),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    orderModel.orderCode ?? '-------',
                    style: TextStyles.font18SemiBold(context),
                  ),
                  Text(
                    orderModel.date ?? '-------',
                    style: TextStyles.font18Medium(
                      context,
                    ).copyWith(color: Color(0xff6B6B6B)),
                  ),
                ],
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  color:
                      orderModel.status == 0
                          ? Color(0xffFCF7E5)
                          : orderModel.status == 1
                          ? Color(0xffEAF6EC)
                          : Color(0xffFAE5E7),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text(
                  orderModel.status == 0
                      ? 'قيد المراجعه'
                      : orderModel.status == 1
                      ? 'تم الاستلام'
                      : 'مرفوض',
                  style: TextStyles.font18Medium(context).copyWith(
                    color:
                        orderModel.status == 0
                            ? Color(0xffEACE56)
                            : orderModel.status == 1
                            ? Color(0xff28A745)
                            : Color(0xffD00416),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Divider(color: Color(0xffE5E5E5)),
          SizedBox(height: 10),
          Row(
            children: [
              Spacer(),
              ColumnOfOrderDetails(
                title: 'نوع الخردة',
                subTitle: orderModel.scrapType ?? '-------',
              ),
              Spacer(),
              SizedBox(height: 25, child: VerticalDivider(width: 1)),
              Spacer(),
              ColumnOfOrderDetails(
                title: 'الوزن المقدر',
                subTitle: orderModel.quantity ?? '-------',
              ),
              Spacer(),
              SizedBox(height: 25, child: VerticalDivider(width: 1)),
              Spacer(),
              ColumnOfOrderDetails(
                title: 'القيمه المقدره',
                subTitle: orderModel.price ?? '-------',
              ),
              Spacer(),
            ],
          ),
          SizedBox(height: 10),
          Divider(color: Color(0xffE5E5E5)),
          SizedBox(height: 10),
          Row(
            children: [
              Spacer(),
              ColumnOfOrderDetails(
                title: 'تاريخ الاستلام',
                subTitle: orderModel.dateToReceive ?? '-------',
              ),

              Spacer(),
              SizedBox(height: 25, child: VerticalDivider(width: 1)),
              Spacer(),
              ColumnOfOrderDetails(
                title: 'ملاحظات الادارة',
                subTitle: orderModel.adminsNote ?? '-------',
              ),
              Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}
