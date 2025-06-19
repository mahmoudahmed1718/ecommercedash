import 'package:ecommercedash/core/helper_functions/on_generate_route.dart';
import 'package:ecommercedash/features/dashboard/presentation/view/dash_board_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: DashBoardView.routeName,
      onGenerateRoute: onGenerateRoutes,
    );
  }
}
