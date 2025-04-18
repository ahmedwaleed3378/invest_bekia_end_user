import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:invest_bekia/core/utils/app_styles.dart';

class CustomDropDownMenuToChooseCity extends StatefulWidget {
  const CustomDropDownMenuToChooseCity({super.key, required this.onSelected});
  final void Function(String) onSelected;

  @override
  State<CustomDropDownMenuToChooseCity> createState() =>
      _CustomDropDownMenuToChooseCityState();
}

class _CustomDropDownMenuToChooseCityState
    extends State<CustomDropDownMenuToChooseCity> {
  final List<String> governorates = [
    'القاهرة',
    'الجيزة',
    'الإسكندرية',
    'الدقهلية',
    'البحر الأحمر',
    'البحيرة',
    'الفيوم',
    'الغربية',
    'الإسماعيلية',
    'المنوفية',
    'المنيا',
    'القليوبية',
    'الوادي الجديد',
    'السويس',
    'اسوان',
    'اسيوط',
    'بني سويف',
    'بورسعيد',
    'دمياط',
    'جنوب سيناء',
    'كفر الشيخ',
    'مطروح',
    'الأقصر',
    'قنا',
    'شمال سيناء',
    'سوهاج',
  ];

  String selectedGovernorate = 'القاهرة';

  void _openBottomSheet() {
    showModalBottomSheet(
      backgroundColor: Color(0xffffffff),
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (BuildContext context) {
        return ListView.separated(
          padding: const EdgeInsets.all(16),
          itemCount: governorates.length,
          itemBuilder: (context, index) {
            final city = governorates[index];
            return ListTile(
              title: Text(city, style: TextStyles.font18Regular(context)),
              trailing: city == selectedGovernorate ? Icon(Icons.check) : null,
              onTap: () {
                setState(() {
                  selectedGovernorate = city;
                });
                widget.onSelected(city);
                Navigator.pop(context);
              },
            );
          },
          separatorBuilder: (_, __) => Divider(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'المدينة',
            style: TextStyles.font20Medium(
              context,
            ).copyWith(color: Color(0xff6B6B6B)),
          ),
          const SizedBox(height: 8),
          GestureDetector(
            onTap: _openBottomSheet,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Color(0xffECECEC), width: 1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    selectedGovernorate,
                    style: TextStyles.font18Regular(
                      context,
                    ).copyWith(color: Colors.black),
                  ),
                  Icon(IconlyLight.arrow_down_2),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
