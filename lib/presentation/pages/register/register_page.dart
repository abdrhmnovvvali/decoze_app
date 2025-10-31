import 'package:decoze_app/core/extensions/sized_box_extension.dart';
import 'package:decoze_app/presentation/pages/register/register_email_input.dart' show RegisterEmailInput;

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_paddings.dart';
import '../../../core/constants/app_texts.dart';
import '../../../core/constants/auth_title.dart';
import '../../../core/controllers/regsiter_controller.dart';

import 'package:flutter/material.dart';

import '../../widgets/custom_app_bar.dart';
import '../../widgets/remember_me_option.dart';
import '../../widgets/social_buttons.dart';
import 'register_auth_options.dart';
import 'register_button.dart';
import 'register_password_input.dart';


class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _registerController = RegisterController.instance;

  @override
  void initState() {
    _registerController.init();
    super.initState();
  }

  // @override
  // void dispose() {
  //   _registerController.dispose();
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
              const AuthTitle(title: AppTexts.registerAuthTitle),
              45.h,
              const RegisterEmailInput(),
              26.h,
              const RegisterPasswordInput(),
              26.h,
              const RememberMeOption(),
              26.h,
              const RegisterButton(),
              90.h,
              const SocialButtons(),
              40.h,
              const RegisterAuthOption(),
            ],
          ),
        ),
      ),
    );
  }
}