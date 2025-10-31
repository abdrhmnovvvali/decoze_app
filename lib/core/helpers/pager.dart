import 'package:decoze_app/presentation/pages/onboard/onboard.dart';
import 'package:decoze_app/presentation/pages/splash/splash.dart';
import 'package:decoze_app/presentation/pages/welcome/welcome.dart';
import 'package:flutter/material.dart';

class Pager {
  Pager._();
  static final Widget splash = SplashPage();
  static final Widget welcome = WelcomePage();
  static final Widget onboard = OnboardPage();
}
