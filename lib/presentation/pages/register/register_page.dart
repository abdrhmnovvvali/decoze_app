import '../../controllers/register_controller.dart';
import 'widgets/register_auth_option.dart';
import 'widgets/register_button.dart';
import 'widgets/register_email.dart';
import 'widgets/register_password.dart';
import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/app_padding.dart';
import '../../../utils/constants/app_texts.dart';
import '../../../utils/extensions/sized_box_extensions.dart';
import '../../../widgets/auth/auth_title.dart';
import '../../../widgets/auth/remember_me_option.dart';
import '../../../widgets/auth/social_buttons.dart';
import '../../../widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';


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
