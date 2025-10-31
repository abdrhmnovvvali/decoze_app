import 'dart:io';

import 'package:flutter/material.dart';

class CompleteProfileController {
  CompleteProfileController._();

  static CompleteProfileController? _instance;

  static CompleteProfileController get instance =>
      _instance ??= CompleteProfileController._();

  final ValueNotifier<File?> profileImageController = ValueNotifier(null);

  FocusNode? firstNameFocus;
  FocusNode? lastNameFocus;
  FocusNode? dateOfBirthFocus;
  FocusNode? emailFocus;
  FocusNode? phoneNumberFocus;
  FocusNode? genderFocus;

  TextEditingController? firstNameController;
  TextEditingController? lastNameController;
  TextEditingController? dateOfBirthController;
  TextEditingController? emailController;
  TextEditingController? phoneNumberController;
  TextEditingController? genderController;

  final ValueNotifier<bool> isFilled = ValueNotifier(false);

  void updateFilled() {
    isFilled.value =
        firstNameController!.text.isNotEmpty &&
        lastNameController!.text.isNotEmpty &&
        emailController!.text.isNotEmpty &&
        dateOfBirthController!.text.isNotEmpty &&
        phoneNumberController!.text.isNotEmpty &&
        genderController!.text.isNotEmpty;
  }

  void init() {
    firstNameFocus = FocusNode();
    lastNameFocus = FocusNode();
    dateOfBirthFocus = FocusNode();
    emailFocus = FocusNode();
    phoneNumberFocus = FocusNode();
    genderFocus = FocusNode();

    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
    dateOfBirthController = TextEditingController();
    emailController = TextEditingController();
    phoneNumberController = TextEditingController();
    genderController = TextEditingController();

    firstNameController?.addListener(updateFilled);
    lastNameController?.addListener(updateFilled);
    emailController?.addListener(updateFilled);
    dateOfBirthController?.addListener(updateFilled);
    phoneNumberController?.addListener(updateFilled);
    genderController?.addListener(updateFilled);
  }

  void dispose() {
    firstNameFocus?.dispose();
    lastNameFocus?.dispose();
    dateOfBirthFocus?.dispose();
    emailFocus?.dispose();
    phoneNumberFocus?.dispose();
    genderFocus?.dispose();

    firstNameController?.dispose();
    lastNameController?.dispose();
    dateOfBirthController?.dispose();
    emailController?.dispose();
    phoneNumberController?.dispose();
    genderController?.dispose();

    firstNameFocus = null;
    lastNameFocus = null;
    dateOfBirthFocus = null;
    emailFocus = null;
    phoneNumberFocus = null;
    genderFocus = null;

    firstNameController = null;
    lastNameController = null;
    dateOfBirthController = null;
    emailController = null;
    phoneNumberController = null;
    genderController = null;

    firstNameController?.removeListener(updateFilled);
    lastNameController?.removeListener(updateFilled);
    emailController?.removeListener(updateFilled);
    dateOfBirthController?.removeListener(updateFilled);
    phoneNumberController?.removeListener(updateFilled);
    genderController?.removeListener(updateFilled);
  }
}
