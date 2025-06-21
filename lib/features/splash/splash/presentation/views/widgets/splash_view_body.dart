import 'package:ecommercedash/features/dashboard/presentation/view/dash_board_view.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    excuteNaviation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text('Welcome to Our App'),
        //   Row(
        //     mainAxisAlignment: MainAxisAlignment.start,
        //     children: [SvgPicture.asset(Assets.imagesPlant)],
        //   ),
        //   SvgPicture.asset(Assets.imagesLogo),
        //   SvgPicture.asset(Assets.imagesCircles, fit: BoxFit.fill),
      ],
    );
  }

  void excuteNaviation() {
    // Provide a default value of false if null
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, DashBoardView.routeName);
      // If
    });
  }
}
