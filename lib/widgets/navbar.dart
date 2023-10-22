import 'package:math_hackers_page/routes/linkspage.dart';

class NavBar extends ResponsiveWidget {
  const NavBar({super.key});

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
  const DesktopNavBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isScrolled = ref.watch(scrolledProvider);
    final navBarColor = isScrolled ? Colors.white : Colors.transparent;

    return Container(
      color: navBarColor,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: <Widget>[
            Image.asset(
              logo2ln,
              height: MediaQuery.of(context).size.height * .17,
            ),
            Expanded(child: Container()),
            NavBarButton(
              onTap: () =>
                  ref.read(currentPageProvider.notifier).state = homeKey,
              text: "INICIO",
            ),
            NavBarButton(
              onTap: () =>
                  ref.read(currentPageProvider.notifier).state = hackathonKey,
              text: "MODASAFE",
            ),
            NavBarButton(
              onTap: () =>
                  ref.read(currentPageProvider.notifier).state = desafioKey,
              text: "DESAFÍO",
            ),
            NavBarButton(
              onTap: () =>
                  ref.read(currentPageProvider.notifier).state = sepsisKey,
              text: "SEPSIS",
            ),
            NavBarButton(
              onTap: () =>
                  ref.read(currentPageProvider.notifier).state = detectionKey,
              text: "DETECCIÓN",
            ),
            NavBarButton(
              onTap: () =>
                  ref.read(currentPageProvider.notifier).state = codeKey,
              text: "CÓDIGO",
            ),
            NavBarButton(
              onTap: () =>
                  ref.read(currentPageProvider.notifier).state = aboutKey,
              text: "NOSOTROS",
            ),
          ],
        ),
      ),
    );
  }
}

class MobileNavBar extends HookConsumerWidget {
  const MobileNavBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final containerHeight = useState<double>(0.0);
    final isScrolled = ref.watch(scrolledProvider);

    final navBarColor = isScrolled ? Colors.white : Colors.transparent;
    return Stack(
      children: [
        AnimatedContainer(
          margin: const EdgeInsets.only(top: 70.0),
          duration: const Duration(milliseconds: 350),
          curve: Curves.ease,
          height: containerHeight.value,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 45,
                ),
                NavBarButton(
                  text: "INICIO",
                  onTap: () {
                    ref.read(currentPageProvider.notifier).state = homeKey;
                    containerHeight.value = 0;
                  },
                ),
                NavBarButton(
                  text: "MODASAFE",
                  onTap: () {
                    ref.read(currentPageProvider.notifier).state = hackathonKey;
                    containerHeight.value = 0;
                  },
                ),
                NavBarButton(
                  text: "DESAFÍO",
                  onTap: () {
                    ref.read(currentPageProvider.notifier).state = desafioKey;
                    containerHeight.value = 0;
                  },
                ),
                NavBarButton(
                  onTap: () =>
                      ref.read(currentPageProvider.notifier).state = sepsisKey,
                  text: "SEPSIS",
                ),
                NavBarButton(
                  onTap: () => ref.read(currentPageProvider.notifier).state =
                      detectionKey,
                  text: "DETECCIÓN",
                ),
                NavBarButton(
                  onTap: () =>
                      ref.read(currentPageProvider.notifier).state = codeKey,
                  text: "CÓDIGO",
                ),
                NavBarButton(
                  text: "NOSOTROS",
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
            padding: const EdgeInsets.all(16),
            child: Row(
              children: <Widget>[
                Image.asset(
                  logo2ln,
                  height: MediaQuery.of(context).size.height * .13,
                ),
                const SizedBox(width: 10.0),
                Expanded(
                  child: Container(),
                ),
                Material(
                  child: InkWell(
                    splashColor: Colors.white60,
                    onTap: () {
                      final height = containerHeight.value > 0
                          ? 0.0
                          : MediaQuery.of(context).size.height * .8;
                      containerHeight.value = height;
                    },
                    child: const Icon(
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
