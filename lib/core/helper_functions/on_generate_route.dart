import 'package:ecommercedash/features/add_product/presentation/view/add_product_view.dart';
import 'package:ecommercedash/features/dashboard/presentation/view/dash_board_view.dart';
import 'package:ecommercedash/features/splash/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());
    case DashBoardView.routeName:
      return MaterialPageRoute(builder: (context) => const DashBoardView());
    case AddProductView.routeName:
      return MaterialPageRoute(builder: (context) => const AddProductView());
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
