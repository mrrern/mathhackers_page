import 'dart:ui';

import 'package:math_hackers_page/routes/linkspage.dart';
import 'package:rive/rive.dart';

class HomeContent extends ResponsiveWidget {
  const HomeContent({super.key});

  @override
  Widget buildDesktop(BuildContext context) {
    return const DesktopContent();
  }

  @override
  Widget buildMobile(BuildContext context) {
    return const MobileContent();
  }
}

class DesktopContent extends HookConsumerWidget {
  const DesktopContent({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      children: [
        SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .6,
            child: const RiveAnimation.asset(
              shapes2,
            )),
        SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .6,
            child: const RiveAnimation.asset(
              shapes2,
              fit: BoxFit.fitWidth,
            )),
        Positioned.fill(
            child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
          child: const SizedBox(),
        )),
        SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .6,
            child: const RiveAnimation.asset(
              slogan,
              fit: BoxFit.fitHeight,
            )),
      ],
    );
  }
}

class MobileContent extends HookConsumerWidget {
  const MobileContent({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Stack(
        children: [
          SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .3,
              child: const RiveAnimation.asset(
                shapes2,
                fit: BoxFit.fitHeight,
                alignment: Alignment.center,
              )),
          SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .6,
              child: const RiveAnimation.asset(
                shapes2,
                fit: BoxFit.fitWidth,
              )),
          Positioned.fill(
              child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
            child: const SizedBox(),
          )),
          Center(
            child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * .6,
                child: const RiveAnimation.asset(
                  slogan,
                  fit: BoxFit.contain,
                  alignment: Alignment.center,
                )),
          ),
        ],
      ),
    );
  }
}
