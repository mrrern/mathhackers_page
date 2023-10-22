import 'package:math_hackers_page/routes/linkspage.dart';
import 'package:rive/rive.dart';

class ShapesAnimationContainer extends StatelessWidget {
  const ShapesAnimationContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .1,
      child: const Stack(
        children: [
          RiveAnimation.asset(
            shapes2,
            fit: BoxFit.fitWidth,
          ),
        ],
      ),
    );
  }
}
