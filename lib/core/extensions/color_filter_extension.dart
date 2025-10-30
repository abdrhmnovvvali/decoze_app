import 'package:flutter/material.dart';

extension ColorFilterExtensions on Color {
  ColorFilter get toColorFilter => ColorFilter.mode(this, BlendMode.srcIn);
}
