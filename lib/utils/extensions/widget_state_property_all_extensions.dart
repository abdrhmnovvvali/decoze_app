import 'package:flutter/widgets.dart';

extension WidgetStatePropertyAllExtensions<T> on T {
  WidgetStatePropertyAll<T> get toWspAll => WidgetStatePropertyAll<T>(this);
}
