import 'package:flutter/material.dart';


class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    this.onPressed,
    required this.text,
    this.style,
    this.enabled = true,
  });

  final VoidCallback? onPressed;
  final String text;
  final ButtonStyle? style;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: enabled ? onPressed : null,
      // style: style ?? AppButtonStyles.textButtonStyle,
      child: Text(text),
    );
  }
}