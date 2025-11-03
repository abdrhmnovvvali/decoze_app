import 'package:flutter/material.dart';

class ProductController {
  ProductController._();

  static ProductController? _instance;
  static ProductController get instance => _instance ??= ProductController._();

  TextEditingController? searchController;
  FocusNode? searchFocus;

  void init() {
    searchController = TextEditingController();
    searchFocus = FocusNode();
  }

  void dispose() {
    searchController?.dispose();
    searchFocus?.dispose();
    searchController = null;
    searchFocus = null;
  }
}
