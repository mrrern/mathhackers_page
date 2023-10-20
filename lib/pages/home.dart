import 'package:math_hackers_page/routes/linkspage.dart';

class MyHomePage extends HookConsumerWidget {
  const MyHomePage({super.key});

  void onScroll(ScrollController controller, WidgetRef ref) {
    final isScrolled = ref.read(scrolledProvider);

    if (controller.position.pixels > 5 && !isScrolled) {
      ref.read(scrolledProvider.notifier).state = true;
    } else if (controller.position.pixels <= 5 && isScrolled) {
      ref.read(scrolledProvider.notifier).state = false;
    }
  }

  void scrollTo(GlobalKey key) => Scrollable.ensureVisible(key.currentContext!,
      duration: Duration(milliseconds: 500));

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _controller = useScrollController();

    useEffect(() {
      _controller.addListener(() => onScroll(_controller, ref));
      return _controller.dispose;
    }, [_controller]);

    double width = MediaQuery.of(context).size.width;
    double maxWith = width > 1200 ? 1200 : width;

    ref
        .watch(currentPageProvider.notifier)
        .addListener(scrollTo, fireImmediately: false);

    return Scaffold(
      body: Center(
        child: SizedBox(
          width: maxWith,
          child: Column(
            children: [
              //Navigation Bar
              const NavBar(),
              Expanded(
                  child: SingleChildScrollView(
                controller: _controller,
                child: Column(
                  children: [
                    //Home
                    HomeContent(
                      key: homeKey,
                    ),
                    //Hackathon
                    HackathonContent(
                      key: hackathonKey,
                    ),
                    //Desafio
                    DesafioContent(key: desafioKey),
                    //Sobre Nosotros
                    AboutContent(key: aboutKey),
                    //Espacio en Blanco
                    const SizedBox(
                      height: 50,
                    )
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
