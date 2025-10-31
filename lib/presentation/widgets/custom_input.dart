import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

import '../../core/constants/app_assets.dart';
import '../../core/constants/app_colors.dart';
import '../../core/constants/app_paddings.dart';
import '../../core/constants/app_radiuses.dart';
import '../../core/constants/app_text_styles.dart';
import '../../core/extensions/color_filter_extension.dart';

class CustomInput extends StatefulWidget {
  CustomInput({
    super.key,
    required this.controller,
    required this.focusNode,
    this.hintText,
    this.prefixSvg,
    this.suffixSvg,
    this.onChanged,
    this.isSecure = false,
    this.readOnly = false,
    this.prefix,
    this.inputFormatters,
    this.keyboardType,
    this.fillColor = AppColors.transparent,
    this.textStyle = AppTextStyles.alertSemibold600,
    this.cursorColor = AppColors.white,
    this.isFocus = false,
    this.onTap,
  });

  final TextEditingController? controller;
  final String? hintText;
  final String? prefixSvg;
  final String? suffixSvg;
  final bool isSecure;
  final FocusNode? focusNode;
  final void Function(String)? onChanged;
  final bool readOnly;
  final Widget? prefix;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final Color? fillColor;
  final TextStyle textStyle;
  final Color? cursorColor;
  final VoidCallback? onTap;
  bool isFocus;

  @override
  State<CustomInput> createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  bool _isSecure = true;

  InputBorder inputBorders() {
    return OutlineInputBorder(
      borderRadius: AppRadiuses.a100,
      borderSide: const BorderSide(color: AppColors.carbonGrey, width: 1),
    );
  }

  @override
  void initState() {
    widget.focusNode!.addListener(_focusListener);
    widget.controller!.addListener(_controllerListener);
    super.initState();
  }

  void _controllerListener() {
    if (widget.focusNode!.hasFocus) return;
    widget.isFocus = widget.controller!.text.isNotEmpty;
    setState(() {});
  }

  void _focusListener() {
    if (widget.controller!.text.isNotEmpty) return;
    widget.isFocus = widget.focusNode!.hasFocus;
    setState(() {});
  }

  void _toggleSecureIcon() {
    _isSecure = !_isSecure;
    setState(() {});
  }

  @override
  void dispose() {
    widget.focusNode!.removeListener(_focusListener);
    widget.controller!.removeListener(_controllerListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: AppRadiuses.a100,
      child: TextFormField(
        controller: widget.controller,
        focusNode: widget.focusNode,
        obscureText: _isSecure ? widget.isSecure : false,
        obscuringCharacter: '*',
        style: widget.textStyle,
        cursorHeight: 16,
        cursorColor: widget.cursorColor,
        onChanged: widget.onChanged,
        readOnly: widget.readOnly,
        inputFormatters: widget.inputFormatters,
        keyboardType: widget.keyboardType,
        onTap: () {
          //FocusScope.of(context).unfocus();
          if (widget.onTap != null) {
            widget.onTap!();
          } else if (widget.readOnly) {
            _selectDate(context);
          }
        },
        decoration: InputDecoration(
          border: inputBorders(),
          enabledBorder: inputBorders(),
          focusedBorder: inputBorders().copyWith(
            borderSide: BorderSide(color: AppColors.boulder),
          ),
          fillColor: widget.fillColor,
          filled: true,
          hintText: widget.hintText,
          hintStyle: AppTextStyles.alertSemibold600,
          prefixIcon:
              widget.prefix ??
              (widget.prefixSvg != null
                  ? Padding(
                      padding: AppPaddings.l16 + AppPaddings.r10,
                      child: SvgPicture.asset(
                        widget.prefixSvg!,
                        colorFilter: widget.isFocus
                            ? AppColors.white.toColorFilter
                            : AppColors.white.toColorFilter,
                      ),
                    )
                  : null),
          suffixIcon: widget.suffixSvg != null
              ? InkWell(
                  onTap: widget.isSecure ? _toggleSecureIcon : null,
                  child: Padding(
                    padding: AppPaddings.r16,
                    child: SvgPicture.asset(
                      _isSecure ? widget.suffixSvg! : AppAssets.isSecure,
                      width: 18,
                      height: 18,
                      //height: AppConstants.inputIconsBoxConstraints.minHeight,
                      //width: AppConstants.inputIconsBoxConstraints.minWidth,
                      colorFilter: widget.isFocus
                          ? AppColors.white.toColorFilter
                          : AppColors.white.toColorFilter,
                    ),
                  ),
                )
              : null,
          //suffixIconConstraints: AppConstants.inputIconsBoxConstraints,
          //contentPadding: AppPaddings.h20 + AppPaddings.v16,
        ),
      ),
    );
  }

  DateTime? selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (picked != null) {
      widget.controller!.text = DateFormat('M/d/y').format(picked);
      selectedDate = picked;
    }
  }
}
