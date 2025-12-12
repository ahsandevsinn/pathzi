import 'package:flutter/material.dart';
import 'package:pathzi/core/theme/app_colors.dart';

class CustomDropdownField<T> extends StatefulWidget {
  final T? value;
  final List<DropdownMenuItem<T>> items;
  final String? hintText;
  final IconData? prefixIcon;
  final Widget? suffix;
  final bool isSuffixShow;
  final String? Function(T?)? validator;
  final Function(T?)? onChanged;
  final bool readOnly;
  final VoidCallback? onTap;

  CustomDropdownField({
    super.key,
    required this.items,
    this.value,
    this.hintText,
    this.prefixIcon,
    this.validator,
    this.suffix,
    this.isSuffixShow = false,
    this.onChanged,
    this.readOnly = false,
    this.onTap,
  });

  @override
  _CustomDropdownFieldState<T> createState() => _CustomDropdownFieldState<T>();
}

class _CustomDropdownFieldState<T> extends State<CustomDropdownField<T>> {
  T? _currentValue;

  @override
  void initState() {
    super.initState();
    _currentValue = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: FormField<T>(
        validator: widget.validator,
        builder: (FormFieldState<T> state) {
          return InputDecorator(
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
              fillColor: AppColors.grey, 
              filled: true,
              prefixIcon: widget.prefixIcon != null
                  ? Icon(
                      widget.prefixIcon,
                      color: const Color(0xff9E9E9E),
                      size: 25,
                    )
                  : null,
              suffixIcon: widget.isSuffixShow
                  ? widget.suffix ??
                      const Icon(
                        Icons.arrow_drop_down,
                        color: AppColors.purple
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
              errorText: state.errorText,
            ),
            isEmpty: _currentValue == null,
            child: DropdownButtonHideUnderline(
              child: DropdownButton<T>(
                isExpanded: true,
                value: _currentValue,
                items: widget.items,
                onChanged: widget.readOnly
                    ? null
                    : (value) {
                        setState(() {
                          _currentValue = value;
                        });
                        if (widget.onChanged != null) {
                          widget.onChanged!(value);
                        }
                      },
                onTap: widget.onTap,
                icon: widget.isSuffixShow ? const SizedBox.shrink() : null,
                hint: widget.hintText != null
                    ? Text(
                        widget.hintText!,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: AppColors.black,
                        ),
                      )
                    : null,
                dropdownColor: AppColors.grey
              ),
            ),
          );
        },
      ),
    );
  }
}
