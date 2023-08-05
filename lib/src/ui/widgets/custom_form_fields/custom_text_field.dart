import 'package:flutter/material.dart';

import '../../themes/themes.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    required this.title,
    super.key,
    this.controller,
    this.keyboardType,
    this.textAlign = TextAlign.left,
    this.isVisible = false,
    this.isShowPassword = false,
  });

  final String title;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final TextAlign? textAlign;
  final bool isVisible;
  final bool isShowPassword;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  textAlign: textAlign,
                  style: TypographyStyle.st4.paletteBlue.copyWith(
                    fontFamily: 'Schwifty',
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 5),
        Container(
          height: 52,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: transparent,
            border: Border.all(
              color: paletteDarkSkyblue.withOpacity(0.8),
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: TextFormField(
              style: TypographyStyle.st165.paletteBlue.w500.s18,
              controller: controller,
              decoration: const InputDecoration(
                focusedBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
              ),
              keyboardType: keyboardType,
            ),
          ),
        ),
      ],
    );
  }
}
