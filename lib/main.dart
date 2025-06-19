import 'package:ecommercedash/core/helper_functions/on_generate_route.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(onGenerateRoute: onGenerateRoutes);
  }
}
