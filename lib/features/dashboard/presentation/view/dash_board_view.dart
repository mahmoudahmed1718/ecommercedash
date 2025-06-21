import 'package:ecommercedash/features/dashboard/presentation/view/widgets/dash_board_view_body.dart';
import 'package:flutter/material.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});
  static const String routeName = '/dashboard';
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: DashBoardViewBody());
  }
}
