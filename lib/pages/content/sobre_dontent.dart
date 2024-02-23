import 'package:math_hackers_page/routes/linkspage.dart';

class AboutContent extends HookConsumerWidget {
  const AboutContent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Text('Nosotros',
                textAlign: TextAlign.center,
                style: GoogleFonts.josefinSans(
                  textStyle: TextStyle(
                    color: darkBlue,
                    fontWeight: FontWeight.w800,
                    fontSize: MediaQuery.of(context).size.width * .05,
                  ),
                )),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .03,
        ),
        const InfoCard(
            image: altuosImage,
            info: aluosInfo,
            name: altuosName,
            url: altuosUrl),
        SizedBox(
          height: MediaQuery.of(context).size.height * .03,
        ),
        const InfoCard(
            image: mrrernImage,
            info: mrrernInfo,
            name: mrrernName,
            url: mrrernUrl),
        SizedBox(
          height: MediaQuery.of(context).size.height * .03,
        ),
        const InfoCard(
            image: geisonImage,
            info: geisonInfo,
            name: geisonName,
            url: geisonUrl),
        SizedBox(
          height: MediaQuery.of(context).size.height * .03,
        ),
        const InfoCard(
            image: danielImage,
            info: danielInfo,
            name: danielName,
            url: danielUrl),
        SizedBox(
          height: MediaQuery.of(context).size.height * .03,
        ),
        const InfoCard(
            image: grendelImage,
            info: grendelInfo,
            name: grendelName,
            url: grendelUrl),
        SizedBox(
          height: MediaQuery.of(context).size.height * .03,
        ),
      ]),
    );
  }
}
