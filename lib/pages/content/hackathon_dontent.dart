import 'package:math_hackers_page/routes/linkspage.dart';

final _webContoller = WebViewController()..loadRequest(Uri.parse(linkLaCoNGA));

class HackathonContent extends ResponsiveWidget {
  const HackathonContent({super.key});

  @override
  Widget buildDesktop(BuildContext context) {
    return const DContent();
  }

  @override
  Widget buildMobile(BuildContext context) {
    return const Mot();
  }
}

class DContent extends HookConsumerWidget {
  const DContent({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Container(
            color: darkBlue,
            child: Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .3,
                  height: MediaQuery.of(context).size.height * .4,
                  child: Image.asset(laconga,
                      alignment: Alignment.center, fit: BoxFit.contain),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .6,
                  height: MediaQuery.of(context).size.height * .6,
                  child: Center(
                    child: Text(
                      'El desafío que estamos abordando en este hackathon es "Potenciar la Detección Temprana de Sepsis mediante el Análisis de Series Temporales Fisiológicas". La sepsis es una condición potencialmente mortal que presenta desafíos en su detección temprana. En este desafío, buscamos innovar y crear soluciones que permitan a los profesionales de la salud visualizar y facilitar la interpretación clínica de los factores asociados con el riesgo de sepsis en pacientes hospitalizados.',
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: MediaQuery.of(context).size.width * .0136,
                      )),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .05,
          ),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * .6,
              height: MediaQuery.of(context).size.height * .6,
              child: WebViewWidget(controller: _webContoller),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .05,
          ),
        ],
      ),
    );
  }
}

class Mot extends HookConsumerWidget {
  const Mot({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Container(
        color: darkBlue,
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * .8,
              height: MediaQuery.of(context).size.height * .4,
              child: Image.asset(laconga,
                  alignment: Alignment.center, fit: BoxFit.contain),
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                height: MediaQuery.of(context).size.height * .5,
                child: Center(
                    child: Text(
                  'El desafío que estamos abordando en este hackathon es "Potenciar la Detección Temprana de Sepsis mediante el Análisis de Series Temporales Fisiológicas". La sepsis es una condición potencialmente mortal que presenta desafíos en su detección temprana. En este desafío, buscamos innovar y crear soluciones que permitan a los profesionales de la salud visualizar y facilitar la interpretación clínica de los factores asociados con el riesgo de sepsis en pacientes hospitalizados.',
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.width * .03,
                  )),
                ))),
            SizedBox(
              height: MediaQuery.of(context).size.height * .05,
            ),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                height: MediaQuery.of(context).size.height * .3,
                child: WebViewWidget(controller: _webContoller),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .05,
            ),
          ],
        ),
      ),
    );
  }
}
