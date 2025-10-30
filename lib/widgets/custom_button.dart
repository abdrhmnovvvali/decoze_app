import 'package:decoze/utils/constants/app_button_styles.dart';
import 'package:flutter/material.dart';


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
    return ElevatedButton(
      style: style ?? buttonStyle,
      onPressed: enabled ? onPressed : null,
      child: Text(text, style: textStyle,),
    );
  }
}
