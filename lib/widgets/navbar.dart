import 'package:math_hackers_page/routes/linkspage.dart';

class NavBar extends ResponsiveWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget buildDesktop(BuildContext context) {
    return const DesktopNavBar();
  }

  @override
  Widget buildMobile(BuildContext context) {
    return const MobileNavBar();
  }
}

class DesktopNavBar extends HookConsumerWidget {
  const DesktopNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isScrolled = ref.watch(scrolledProvider);
    final navBarColor = isScrolled ? darkBlue : Colors.white;

    return Container(
      color: navBarColor,
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          children: <Widget>[
            Image.asset(
              logo2ln,
              height: MediaQuery.of(context).size.height * .2,
            ),
            Expanded(child: Container()),
            NavBarButton(
              onTap: () =>
                  ref.read(currentPageProvider.notifier).state = homeKey,
              text: "Home",
            ),
            NavBarButton(
              onTap: () =>
                  ref.read(currentPageProvider.notifier).state = hackathonKey,
              text: "Hackathon",
            ),
            NavBarButton(
              onTap: () =>
                  ref.read(currentPageProvider.notifier).state = desafioKey,
              text: "Desafío",
            ),
            NavBarButton(
              onTap: () =>
                  ref.read(currentPageProvider.notifier).state = aboutKey,
              text: "Sobre Nosotros",
            ),
          ],
        ),
      ),
    );
  }
}

class MobileNavBar extends HookConsumerWidget {
  const MobileNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final containerHeight = useState<double>(0.0);
    final isScrolled = ref.watch(scrolledProvider);

    final navBarColor = isScrolled ? lightYellow : Colors.white;
    return Stack(
      children: [
        AnimatedContainer(
          margin: EdgeInsets.only(top: 70.0),
          duration: Duration(milliseconds: 350),
          curve: Curves.ease,
          height: containerHeight.value,
          child: SingleChildScrollView(
            child: Column(
              children: [
                NavBarButton(
                  text: "Home",
                  onTap: () {
                    ref.read(currentPageProvider.notifier).state = homeKey;
                    containerHeight.value = 0;
                  },
                ),
                NavBarButton(
                  text: "Hackathon",
                  onTap: () {
                    ref.read(currentPageProvider.notifier).state = hackathonKey;
                    containerHeight.value = 0;
                  },
                ),
                NavBarButton(
                  text: "Desafío",
                  onTap: () {
                    ref.read(currentPageProvider.notifier).state = desafioKey;
                    containerHeight.value = 0;
                  },
                ),
                NavBarButton(
                  text: "Sobre Nosotros",
                  onTap: () {
                    ref.read(currentPageProvider.notifier).state = aboutKey;
                    containerHeight.value = 0;
                  },
                ),
              ],
            ),
          ),
        ),
        Container(
          color: navBarColor,
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              children: <Widget>[
                Image.asset(
                  logo2ln,
                  height: MediaQuery.of(context).size.height * .15,
                ),
                SizedBox(width: 10.0),
                Expanded(
                  child: Container(),
                ),
                Material(
                  child: InkWell(
                    splashColor: Colors.white60,
                    onTap: () {
                      final height = containerHeight.value > 0 ? 0.0 : 240.0;
                      containerHeight.value = height;
                    },
                    child: Icon(
                      Icons.menu,
                      color: Colors.black54,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
