import 'package:ecommercedash/features/dashboard/presentation/view/dash_board_view.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case DashBoardView.routeName:
      return MaterialPageRoute(builder: (context) => const DashBoardView());
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
