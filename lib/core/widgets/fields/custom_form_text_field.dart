import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:invest_bekia/core/utils/app_colors.dart';
import 'package:invest_bekia/core/utils/app_images.dart';
import 'package:invest_bekia/core/utils/app_styles.dart';

// ignore: must_be_immutable
class CustomTextField extends StatefulWidget {
  CustomTextField({
    super.key,
    required this.mainTitle,
    required this.hintTitle,
    required this.obscureText,
    required this.isPassword,
    required this.isLogin,
    required this.isPhone,
    required this.textInputType,
    this.textEditingController,
    this.maxLines = 1,
    this.isEnabled = true,
    this.haveTitle = true,
    this.onChanged,
    this.isSearch = false,
  });
  final String mainTitle, hintTitle;
  final TextInputType textInputType;
  final TextEditingController? textEditingController;
  final int maxLines;
  final void Function(String)? onChanged;
  bool obscureText;
  final bool isPassword, isLogin, isPhone, isEnabled, haveTitle, isSearch;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Visibility(
          visible: widget.haveTitle,
          child: Text(
            widget.mainTitle,
            style: TextStyles.font20Medium(
              context,
            ).copyWith(color: Color(0xff6B6B6B)),
          ),
        ),
        Visibility(
          visible: widget.haveTitle,
          child: SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),
        ),
        Theme(
          data: ThemeData(
            textSelectionTheme: TextSelectionThemeData(
              // ignore: deprecated_member_use
              selectionColor: AppColors.primaryColorOneColor.withOpacity(0.5),
              selectionHandleColor: AppColors.primaryColorTwoColor,
              cursorColor: AppColors.primaryColorThreeColor,
            ),
          ),
          child: TextFormField(
            onChanged: widget.onChanged,
            enabled: widget.isEnabled,

            maxLines: widget.maxLines,
            controller: widget.textEditingController,
            keyboardType: widget.textInputType,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return '${widget.hintTitle} مطلوب';
              }
              if (widget.isPassword) {
                if (value.length < 8 && !widget.isLogin) {
                  return 'يجب ان تكون كلمة السر على الاقل 8 حروف';
                }
              }

              if (widget.isPhone &&
                  !RegExp(r'^(010|011|012|015)\d{8}$').hasMatch(value)) {
                return 'رقم الموبايل غير صحيح';
              }
              return null;
            },
            obscureText: widget.obscureText,
            obscuringCharacter: '*',
            style:
                widget.isPassword
                    ? TextStyles.font24SemiBold(
                      context,
                    ).copyWith(letterSpacing: widget.isPassword ? 8 : 0)
                    : TextStyles.font20SemiBold(context).copyWith(),
            decoration: InputDecoration(
              prefixIconConstraints: BoxConstraints(
                minWidth: 50,
                minHeight: 50,
              ),
              prefixIcon:
                  widget.isSearch
                      ? Padding(
                        padding: const EdgeInsets.only(left: 8, right: 14),
                        child: SvgPicture.asset(Assets.imagesSearch),
                      )
                      : null,
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Color(0xffECECEC), width: 1),
              ),
              contentPadding: EdgeInsets.all(14),
              suffixIcon:
                  widget.isPassword
                      ? Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              widget.obscureText = !widget.obscureText;
                            });
                          },
                          icon:
                              widget.obscureText
                                  ? Icon(
                                    size: 25,
                                    Icons.remove_red_eye,
                                    color: Color(0xff6B6B6B),
                                  )
                                  : Icon(
                                    size: 25,
                                    Icons.remove_red_eye_outlined,
                                    color: Color(0xff6B6B6B),
                                  ),
                        ),
                      )
                      : null,
              fillColor: Color(0xffFFFFFF),

              filled: true,
              hintText: widget.hintTitle,
              hintStyle: TextStyles.font18Medium(
                context,
              ).copyWith(color: Colors.grey, letterSpacing: 0),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Color(0xffECECEC), width: 1),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Color(0xffECECEC), width: 1),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: AppColors.redOne, width: 1),
              ),
              errorStyle: TextStyles.font14Medium(
                context,
              ).copyWith(color: AppColors.redTwo),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: AppColors.redOne, width: 1),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
