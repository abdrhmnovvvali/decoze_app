import 'package:flutter/material.dart';

import '../../core/constants/app_durations.dart';

class AppBottomSheet {
  AppBottomSheet._();

  static showBottomSheet({
    required BuildContext context,
    required Widget child,
  }) => showModalBottomSheet(
    context: Navigator.of(context).context,
    enableDrag: true,
    backgroundColor: Colors.white,
    isScrollControlled: true,
    useSafeArea: true,
    sheetAnimationStyle: const AnimationStyle(
      duration: AppDurations.ms500,
      curve: Curves.easeIn,
    ),
    builder: (context) {
      return child;
    },
  );
}
