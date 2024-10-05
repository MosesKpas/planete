import 'package:flutter/material.dart';
import 'package:planete/animation/onboardingview.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:planete/utils/navigation.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late final Animation<Color?> _backgroundColorAnimation;

  @override
void initState() {
  super.initState();
  _animationController = AnimationController(
    duration: const Duration(seconds: 5),
    vsync: this,
  );
  _backgroundColorAnimation = ColorTween(
    begin: Colors.black,
    end: Colors.white,
  ).animate(_animationController);

  _animationController.forward().whenComplete(() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? hasSeenOnboarding = prefs.getBool('hasSeenOnboarding') ?? false; // Vérifiez la session

    if (hasSeenOnboarding) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const NavigationPage()),
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const OnBoardingView()),
      );
    }
  });
}

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _backgroundColorAnimation,
      builder: (context, child) {
        return Scaffold(
          body: Stack(
            children: [
              Container(
                color: _backgroundColorAnimation.value,
                child: Center(
                  child: Image.asset(
                    "assets/images/logo1.png",
                    fit: BoxFit.contain,
                    alignment: Alignment.center,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
