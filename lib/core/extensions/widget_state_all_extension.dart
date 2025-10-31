import 'package:flutter/widgets.dart';

extension WidgetStateAllExtension<T> on T {
  WidgetStatePropertyAll<T> get toWspAll => WidgetStatePropertyAll<T>(this);
}
