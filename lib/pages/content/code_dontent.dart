import 'package:math_hackers_page/routes/linkspage.dart';

class CodeContent extends HookConsumerWidget {
  const CodeContent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .6,
      child: Center(
        child: Container(
          color: darkBlue,
          child: Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .3,
                child: GestureDetector(
                  onTap: () {
                    const url = 'https://mrrern.github.io/mathhackers_page/';
                     launchUrl(Uri.parse(url));
                  },
                  child: Image.asset('assets/modesafe.png',
                      alignment: Alignment.center, fit: BoxFit.contain),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .6,
                height: MediaQuery.of(context).size.height * .6,
                child: Center(
                  child: Text(
                    'Click a la imagen para ir a Muestro Repositorio',
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.width * .1,
                    )),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
