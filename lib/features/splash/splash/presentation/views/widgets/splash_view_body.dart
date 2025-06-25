import 'dart:async';
import 'package:ecommercedash/features/dashboard/presentation/view/dash_board_view.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  bool _startAnimation = false;

  @override
  void initState() {
    super.initState();

    // Start animation
    Future.delayed(const Duration(milliseconds: 300), () {
      setState(() => _startAnimation = true);
    });

    // Navigate to Dashboard
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, DashBoardView.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF4CAF50),
      body: Center(
        child: AnimatedOpacity(
          duration: const Duration(seconds: 2),
          opacity: _startAnimation ? 1 : 0,
          child: TweenAnimationBuilder(
            tween: Tween<Offset>(
              begin: const Offset(0, 1),
              end: const Offset(0, 0),
            ),
            duration: const Duration(seconds: 2),
            builder: (context, Offset offset, child) {
              return Transform.translate(offset: offset * 100, child: child);
            },
            child: const Text(
              'Welcome to Our App',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 1.5,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
