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

  String? selectedGovernorate = 'القاهرة';

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl, // لعرض النص من اليمين لليسار
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
          DropdownButtonFormField<String>(
            dropdownColor: Color(0xffffffff),
            value: selectedGovernorate,
            items:
                governorates.map((governorate) {
                  return DropdownMenuItem(
                    value: governorate,
                    child: Text(governorate),
                  );
                }).toList(),
            onChanged: (value) {
              setState(() {
                selectedGovernorate = value;
                widget.onSelected(value ?? selectedGovernorate!);
              });
            },
            decoration: InputDecoration(
              fillColor: Color(0xffffffff),
              filled: true,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 16,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Color(0xffECECEC), width: 1),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Color(0xffECECEC), width: 1),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Color(0xffECECEC), width: 1),
              ),
            ),
            style: TextStyles.font18Regular(
              context,
            ).copyWith(color: Colors.black),
            icon: Icon(IconlyLight.arrow_down_2),
          ),
        ],
      ),
    );
  }
}
