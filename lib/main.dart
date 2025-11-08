import 'cubits/cart/cart_cubit.dart';
import 'cubits/product/product_cubit.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app.dart';
import 'core/dio/api_services.dart';
import 'core/repository/product_repository.dart';


void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => ProductCubit(ProductRepository(ApiService()))..fetchProducts(),
        ),
        BlocProvider(
          create: (_) => CartCubit(),
        ),
      ],
      child: DevicePreview(
        enabled: true,
        builder: (context) => const MyApp(),
      ),
    ),
  );
}
