import 'package:decoze_app/presentation/pages/complete_profile/complete_profile_page.dart';
import 'package:decoze_app/presentation/pages/completed_profile/completed_profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/product/product_cubit.dart';
import '../../presentation/pages/categories/categories_page.dart';
import '../../presentation/pages/login/login_page.dart';
import '../../presentation/pages/register/register_page.dart';
import '../dio/api_services.dart';
import '../repository/product_repository.dart';

class Pager {
  Pager._();

  static Widget fillProfile = CompleteProfilePage();
  static Widget completedProfile = CompletedProfilePage();
  static const Widget login = LoginPage();
  static const Widget register = RegisterPage();
  static final Widget categories = BlocProvider(
  create: (_) => ProductCubit(ProductRepository(ApiService()))..fetchProducts(),
  child: const CategoryPage(),
);


}
