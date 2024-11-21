import 'package:flutter/material.dart';
import 'package:flutter_4you_app/utils/colors.dart';

class CustomTextField extends StatelessWidget {
  final String? hintText;
  final dynamic validator;
  final bool? obscure;
  final Widget? iconButton;
  final VoidCallback? onTap;
  final dynamic controller;
  final String? initialValue;
  final TextInputType? textInputType;
  final double? textSize;
  final double? width;
  final double? height;
  final void Function(String? p1)? onSaved;
  final bool? readOnly;
  final bool? enabled;
  final Color? filledColor;
  final bool? isFilled;
  final Color? borderColor;
  final Color? focusedBorderColor;
  final double? borderWidth;
  const CustomTextField({
    super.key,
    this.hintText,
    this.controller,
    this.onTap,
    this.validator,
    this.obscure,
    this.iconButton,
    this.initialValue,
    this.textInputType,
    this.textSize,
    this.width,
    this.height,
    this.onSaved,
    this.readOnly,
    this.enabled,
    this.filledColor,
    this.isFilled,
    this.focusedBorderColor,
    this.borderColor,
    this.borderWidth,
  });

  @override
  Widget build(BuildContext context) {
    // final keyBoardProvider = Provider.of<KeyboardProvider>(context);
    return SizedBox(
      width: width ?? double.infinity,
      height: height ?? 53,
      child: TextFormField(
        initialValue: initialValue,
        style: TextStyle(
          color: Colors.black,
          fontSize: textSize ?? 14,
          letterSpacing: 0.5,
        ),
        readOnly: readOnly ?? false,
        enabled: enabled ?? true,
        cursorColor: ProjectColors.mainOrange,
        obscureText: obscure ?? false,
        onTapOutside: (event) {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        keyboardType: textInputType,
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          // labelText: 'i3dn3kdnk3dn',
          suffixIcon: iconButton ?? iconButton,
          hintStyle: const TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w400,
            color: ProjectColors.darkGray,
          ),

          labelStyle: const TextStyle(fontSize: 16.0, color: Colors.grey),
          contentPadding: const EdgeInsets.only(left: 16, right: 16),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
              width: borderWidth ?? 1,
              color: borderColor ?? ProjectColors.mainGray,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
              width: borderWidth ?? 1,
              color: focusedBorderColor ?? ProjectColors.mainOrange,
            ),

            // borderSide: const BorderSide(width: 1.5, color: Colors.grey),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
              width: borderWidth ?? 1,
              color: Colors.red,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
              width: borderWidth ?? 1,
              color: borderColor ?? ProjectColors.mainGray,
            ),
          ),
          fillColor: filledColor ?? ProjectColors.mainGray,
          filled: isFilled == true ? true : false,
        ),
        onTap: onTap ?? () {},
        validator: validator,
        // onSaved: onSaved,
        onChanged: onSaved,

        // onChanged: (text) {
        //   keyBoardProvider.setKeyboardOpen(text.isNotEmpty);
        // },
      ),
    );
  }
}
