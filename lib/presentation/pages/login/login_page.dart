
import 'package:decoze_app/core/extensions/sized_box_extension.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_paddings.dart';
import '../../../core/constants/app_texts.dart';
import '../../../core/constants/auth_title.dart';
import '../../../core/controllers/login_controller.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/remember_me_option.dart';
import '../../widgets/social_buttons.dart';
import 'widgets/login_auth_option.dart';
import 'widgets/login_button.dart';
import 'widgets/login_email_input.dart';
import 'widgets/login_password_input.dart';



class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _loginController = LoginController.instance;

  @override
  void initState() {
    _loginController.init();
    super.initState();
  }

  // @override
  // void dispose() {
  //   _loginController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.ebony,
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: AppPaddings.h24,
          child: Column(
            children: [
              52.h,
              const AuthTitle(title: AppTexts.loginAuthTitle),
              83.h,
              const LoginEmailInput(),
              26.h,
              const LoginPasswordInput(),
              26.h,
              const RememberMeOption(),
              26.h,
              const LoginButton(),
              90.h,
              const SocialButtons(),
              40.h,
              const LoginAuthOption(),
            ],
          ),
        ),
      ),
    );
  }
}