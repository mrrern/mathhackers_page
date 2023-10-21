import 'dart:ui';

import 'package:math_hackers_page/routes/linkspage.dart';
import 'package:rive/rive.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
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
