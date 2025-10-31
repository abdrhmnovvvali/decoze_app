import 'package:flutter/material.dart';

import '../../core/constants/app_button_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onPressed,
    required this.text,
    this.style,
    this.enabled = true,
    this.textStyle,
  });

  final VoidCallback? onPressed;
  final String text;
  final ButtonStyle? style;
  final bool enabled;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    final buttonStyle = enabled
        ? AppButtonStyles.primaryButtonStyle
        : AppButtonStyles.disablePrimaryButtonStyle;
    return SizedBox(
      height: 56,
      width: double.infinity,
      child: ElevatedButton(
        style: style ?? buttonStyle,
        onPressed: enabled ? onPressed : null,
        child: Text(text, style: textStyle),
      ),
    );
  }
}
