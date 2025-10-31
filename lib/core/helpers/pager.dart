import 'package:decoze_app/presentation/pages/completed_profile/completed_profile_page.dart';
import 'package:flutter/material.dart';

import '../../presentation/pages/complete_profile/complete_profile_page.dart';

class Pager {
  Pager._();

  static Widget fillProfile = CompleteProfilePage();
  static Widget completedProfile = CompletedProfilePage();
}
