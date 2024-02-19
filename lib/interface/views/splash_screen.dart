import 'package:anju/config/router/anju_router.dart';
import 'package:anju/config/servicelocator.dart';
import 'package:anju/config/themes/anju_colors.dart';
import 'package:anju/config/utils/images_constant.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  double _scale = 1.0;

  void initAnimation() async {
    if (mounted) {
      setState(() {
        _scale = _scale == 1.0 ? 6.0 : 1.0;
      });
    }
    await Future.delayed(const Duration(milliseconds: 1500));
    setState(() {
      _scale = _scale == 6.0 ? 0.0 : 1.0;
    });
    await Future.delayed(const Duration(milliseconds: 1500));
    geit<AnjuRouteCubit>().goHomeFromSplash();
  }

  @override
  void initState() {
    initAnimation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            TweenAnimationBuilder(
              tween: Tween<double>(begin: 1.0, end: _scale),
              duration: const Duration(milliseconds: 500),
              builder: (BuildContext context, double scale, Widget? child) {
                return Transform.scale(
                  scale: scale,
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      color: AnjuColors.primary,
                      shape: BoxShape.circle,
                    ),
                  ),
                );
              },
            ),
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(180)),
              child: Image.asset(AnjuImages.logo, width: 200),
            ),
          ],
        ),
      ),
    );
  }
}
