import 'package:flutter/material.dart';
import 'package:pathzi/core/theme/app_colors.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController? controller;
  final String? hintText;
  final IconData? prefixIcon;
  final Widget? suffix;
  final bool isSuffixShow;
  final bool obscureText;
  final String obscuringCharacter;
  final String? Function(String?)? validator;
  final Function(String)? onChanged;
  final bool isCountryPicker;
  final onTap;
  bool readOnly;
  TextInputType? keyboardType;
  int? maxLines;

  CustomTextField({
    super.key,
    this.controller,
    this.hintText,
    this.prefixIcon,
    this.validator,
    this.suffix,
    this.keyboardType,
    this.obscureText = false,
    this.isSuffixShow = false,
    this.obscuringCharacter = "*",
    this.isCountryPicker = false,
    this.onTap,
    this.readOnly = false,
    this.maxLines = 1,
    this.onChanged, // Initialize onChanged
  });

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
     
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: TextFormField(
        cursorColor: Colors.black,
        maxLines: widget.maxLines,
        readOnly: widget.readOnly,
        onTap: widget.onTap,
        obscuringCharacter: widget.obscuringCharacter,
        obscureText: widget.obscureText,
        validator: widget.validator,
        keyboardType: widget.keyboardType,
        controller: widget.controller,
        onChanged: widget.onChanged,
        style: const TextStyle(
          fontSize: 15,
          color: Colors.black,
          fontWeight: FontWeight.w400,
        ),
        decoration: InputDecoration(
          suffixIcon: widget.suffix,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 14,
            vertical: 20,
          ),
          fillColor: AppColors.grey,
          filled: true,
          hintText: widget.hintText,
          hintStyle: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w300,
            color: Color(0xff9E9E9E),
          ),
          prefixIcon: widget.prefixIcon != null
              ? Icon(
                  widget.prefixIcon,
                  color: const Color(0xff9E9E9E),
                  size: 25,
                )
              : null,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(100)),
            borderSide: BorderSide.none,
          ),
          errorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(color: Colors.red, width: 1.0),
          ),
          focusedErrorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),

            borderSide: BorderSide(color: Colors.red, width: 1.0),
          ),
        ),
      ),
    );
  }
}

