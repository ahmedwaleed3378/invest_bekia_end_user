import 'package:flutter/material.dart';
import 'package:invest_bekia/featuers/orders/presentation/views/widgets/custom_container_of_order_status.dart';

class RowOfOrdersStatus extends StatefulWidget {
  const RowOfOrdersStatus({super.key});

  @override
  State<RowOfOrdersStatus> createState() => _RowOfOrdersStatusState();
}

class _RowOfOrdersStatusState extends State<RowOfOrdersStatus> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                index = 0;
              });
            },
            child: CustomContainerOfOrderStatus(
              isActive: index == 0,
              title: 'كل الطلبات',
            ),
          ),
        ),
        SizedBox(width: 5),
        Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                index = 1;
              });
            },
            child: CustomContainerOfOrderStatus(
              isActive: index == 1,
              title: 'قيد المراجعة',
            ),
          ),
        ),
        SizedBox(width: 5),

        Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                index = 2;
              });
            },
            child: CustomContainerOfOrderStatus(
              title: 'تم الاستلام',
              isActive: index == 2,
            ),
          ),
        ),
        SizedBox(width: 5),

        Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                index = 3;
              });
            },
            child: CustomContainerOfOrderStatus(
              title: 'مرفوض',
              isActive: index == 3,
            ),
          ),
        ),
      ],
    );
  }
}
