import 'package:flutter/material.dart';
import 'package:invest_bekia/core/utils/app_colors.dart';
import 'package:invest_bekia/featuers/orders/data/model/order_model.dart';
import 'package:invest_bekia/featuers/orders/presentation/views/widgets/column_of_no_orders.dart';
import 'package:invest_bekia/featuers/orders/presentation/views/widgets/custom_container_of_order.dart';
import 'package:invest_bekia/featuers/orders/presentation/views/widgets/row_of_order_status.dart';

class CustomOrdersMainWidget extends StatelessWidget {
  CustomOrdersMainWidget({super.key});

  final List<OrderModel> orders = [
    OrderModel(
      scrapType: 'حديد + المونيوم',
      date: '16/04/2025',
      price: 'بعد الوزن',
      status: 0,
      orderCode: '#001234',
      quantity: 'بعد الوزن',
      dateToReceive: '20/04/2025 - 9:30 ص',
      adminsNote: null,
    ),
    OrderModel(
      scrapType: 'بلاستيك',
      date: '12/04/2025',
      price: '2700 ج.م',
      status: 1,
      orderCode: '#001234',
      quantity: '55 كيلو',
      dateToReceive: '13/04/2025 - 12:00 م',
      adminsNote: 'أضيفت القيمة لسهم 1',
    ),
    OrderModel(
      scrapType: 'غير محدد',
      date: '10/04/2025',
      price: null,
      status: 2,
      orderCode: '#001234',
      quantity: null,
      dateToReceive: '11/04/2025 - 4:30 م',
      adminsNote: null,
    ),
    // You can add more orders here
  ];

  @override
  Widget build(BuildContext context) {
    if (orders.isEmpty) {
      return const SliverFillRemaining(
        hasScrollBody: false,
        child: ColumnOfNoOrders(),
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
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const RowOfOrdersStatus(),
                  const SizedBox(height: 20),
                  ...List.generate(
                    orders.length,
                    (index) => Column(
                      children: [
                        CustomContainerOfOrder(orderModel: orders[index]),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
