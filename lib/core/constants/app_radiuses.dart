import 'package:flutter/widgets.dart';

class AppRadiuses {
  AppRadiuses._();

  static const a4 = BorderRadius.all(Radius.circular(4));
  static const a8 = BorderRadius.all(Radius.circular(8));
  static const a10 = BorderRadius.all(Radius.circular(10));
  static const a100 = BorderRadius.all(Radius.circular(100));

   static const tLR12=BorderRadius.only(topLeft: Radius.circular(12),topRight: Radius.circular(12));
}