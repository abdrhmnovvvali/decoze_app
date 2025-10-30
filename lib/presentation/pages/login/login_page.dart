import 'package:decoze/presentation/pages/login/widgets/login_email_input.dart';
import 'package:decoze/presentation/pages/login/widgets/login_password_input.dart';
import 'package:decoze/utils/constants/app_texts.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_padding.dart';
import '../../../../utils/extensions/sized_box_extensions.dart';
import '../../controllers/login_controller.dart';
import '../../../widgets/auth/auth_title.dart';
import '../../../widgets/auth/remember_me_option.dart';
import '../../../widgets/auth/social_buttons.dart';
import '../../../widgets/custom_app_bar.dart';
import 'widgets/login_auth_option.dart';
import 'widgets/login_button.dart';

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
          padding: AppPaddings.h25,
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
