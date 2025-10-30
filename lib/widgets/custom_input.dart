import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

import '../../utils/constants/app_assets.dart';
import '../../utils/constants/app_colors.dart';
import '../../utils/constants/app_constants.dart';
import '../../utils/constants/app_padding.dart';
import '../../utils/constants/app_radius.dart';
import '../../utils/extensions/color_filter_extensions.dart';
import '../utils/constants/app_text_styles.dart';

class CustomInput extends StatefulWidget {
  const CustomInput({
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
    this.fillColor = AppColors.ebony,
    this.textStyle = AppTextStyles.semiBold600,
    this.cursorColor = AppColors.white,
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

  @override
  State<CustomInput> createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  bool _isSecure = true;
  bool _isFocus = false;

  @override
  void initState() {
    widget.focusNode!.addListener(_focusListener);
    widget.controller!.addListener(_controllerListener);
    super.initState();
  }

  void _controllerListener() {
    if (widget.focusNode!.hasFocus) return;
    _isFocus = widget.controller!.text.isNotEmpty;
    setState(() {});
  }

  void _focusListener() {
    if (widget.controller!.text.isNotEmpty) return;
    _isFocus = widget.focusNode!.hasFocus;
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
      borderRadius: AppRadiuses.a10,
      child: TextFormField(
        controller: widget.controller,
        focusNode: widget.focusNode,
        obscureText: _isSecure ? widget.isSecure : false,
        obscuringCharacter: '*',
        style: widget.textStyle,
        cursorHeight: 20,
        cursorColor: widget.cursorColor,
        onChanged: widget.onChanged,
        readOnly: widget.readOnly,
        inputFormatters: widget.inputFormatters,
        keyboardType: widget.keyboardType,
        onTap: widget.readOnly ? () => _selectDate(context) : null,
        decoration: InputDecoration(
       border:const  OutlineInputBorder(
    borderRadius: AppRadiuses.a100,
    borderSide: BorderSide(color: AppColors.millionGrey, width: 1),
  ),
  enabledBorder:const OutlineInputBorder(
    borderRadius: AppRadiuses.a100,
    borderSide: BorderSide(color: AppColors.millionGrey, width: 1),
  ),
  focusedBorder: const OutlineInputBorder(
    borderRadius: AppRadiuses.a100,
    borderSide:  BorderSide(color:  AppColors.millionGrey, width: 1),
  ),
          fillColor: widget.fillColor,
          filled: true,
          hintText: widget.hintText,
          hintStyle: AppTextStyles.semiBold600,
          prefixIcon:
              widget.prefix ??
              (widget.prefixSvg != null
                  ? Padding(
                      padding: AppPaddings.l20 + AppPaddings.r10,
                      child: SvgPicture.asset(
                        widget.prefixSvg!,
                        colorFilter: _isFocus
                            ? AppColors.mercury.toColorFilter
                            : AppColors.mercury.toColorFilter,
                      ),
                    )
                  : null),
          suffixIcon: widget.suffixSvg != null
              ? InkWell(
                  onTap: widget.isSecure ? _toggleSecureIcon : null,
                  child: Padding(
                    padding: AppPaddings.r20,
                    child: SvgPicture.asset(
                      _isSecure ? widget.suffixSvg! : AppAssets.show,
                      height: AppConstants.inputIconsBoxConstraints.minHeight,
                      width: AppConstants.inputIconsBoxConstraints.minWidth,
                      colorFilter: _isFocus
                          ? AppColors.mercury.toColorFilter
                          : AppColors.mercury.toColorFilter,
                    ),
                  ),
                )
              : null,
          suffixIconConstraints: AppConstants.inputIconsBoxConstraints,
          contentPadding: AppPaddings.h20 + AppPaddings.v16, // Change this
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
