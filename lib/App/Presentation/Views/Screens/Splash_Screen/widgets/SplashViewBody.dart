import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/App/Presentation/Views/Screens/Home/home_screen.dart';

import '../../../Public_Widgets/Nvigation_Bar.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> SlidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();

    NavigateTo_HomePage();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size device = MediaQuery.sizeOf(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedBuilder(
            animation: SlidingAnimation,
            builder: (context, _) {
              return SlideTransition(
                  position: SlidingAnimation,
                  child: Center(
                      child: Text(
                    "Best Movies",
                    style: TextStyle(
                        fontSize: device.width * 0.05,
                        fontWeight: FontWeight.bold),
                  )));
            })
      ],
    );
  }

  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));

    SlidingAnimation =
        Tween<Offset>(begin: const Offset(0, 5), end: const Offset(0, 0))
            .animate(animationController);

    animationController.forward();
  }

  void NavigateTo_HomePage() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(() => const NavigationBarScreen());
    });
  }
}
