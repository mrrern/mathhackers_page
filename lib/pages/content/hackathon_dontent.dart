import 'dart:ui';

import 'package:math_hackers_page/routes/linkspage.dart';
import 'package:rive/rive.dart';

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

//Desktop Widget
//
//
//
//
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
          Center(
            child: Text('Nuestra solución es',
                textAlign: TextAlign.center,
                style: GoogleFonts.josefinSans(
                  textStyle: TextStyle(
                    color: darkBlue,
                    fontWeight: FontWeight.w800,
                    fontSize: MediaQuery.of(context).size.width * .05,
                  ),
                )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .4,
                height: MediaQuery.of(context).size.height * .6,
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .1,
                      ),
                      Text(
                        'MODESAFE',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                color: darkBlue,
                                fontSize:
                                    MediaQuery.of(context).size.width * .0536,
                                fontWeight: FontWeight.bold)),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .02,
                      ),
                      Text(
                        'Modelo para la Detección de Pacientes Detectados por Sepsis, es un software que permite, a través del modelo Sepsis-Tracker, una ayuda al profesional de la salud, al dar una aproximación a partir de sus propios signos vitales y estudios para dar un resultado del riesgo que corre el paciente de presentar Sepsis en sus tipos de grados ',
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          color: darkBlue,
                          fontSize: MediaQuery.of(context).size.width * .0136,
                        )),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .4,
                height: MediaQuery.of(context).size.height * .6,
                child: Image.asset('assets/modesafed.png',
                    alignment: Alignment.center, fit: BoxFit.contain),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .05,
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 206, 206, 206),
                  borderRadius: BorderRadius.all(
                      Radius.circular(MediaQuery.sizeOf(context).width))),
              padding: EdgeInsets.all(MediaQuery.of(context).size.width * .01),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                height: MediaQuery.of(context).size.height * .6,
                child: Image.asset('assets/exp1.png',
                    alignment: Alignment.center, fit: BoxFit.contain),
              ),
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

//Mobile Widget
//
//
//
//
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
            Center(
              child: Text('Nuestra solución es',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.josefinSans(
                    textStyle: TextStyle(
                      color: darkBlue,
                      fontWeight: FontWeight.w800,
                      fontSize: MediaQuery.of(context).size.width * .05,
                    ),
                  )),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .1,
            ),
            Text(
              'MODESAFE',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      color: darkBlue,
                      fontSize: MediaQuery.of(context).size.width * .0536,
                      fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .4,
              height: MediaQuery.of(context).size.height * .6,
              child: Image.asset('assets/modesafed.png',
                  alignment: Alignment.center, fit: BoxFit.contain),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            ),
            Text(
              'Modelo para la Detección de Pacientes Detectados por Sepsis, es un software que permite, a través del modelo Sepsis-Tracker, una ayuda al profesional de la salud, al dar una aproximación a partir de sus propios signos vitales y estudios para dar un resultado del riesgo que corre el paciente de presentar Sepsis en sus tipos de grados ',
              textAlign: TextAlign.justify,
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                color: darkBlue,
                fontSize: MediaQuery.of(context).size.width * .0136,
              )),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .05,
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 206, 206, 206),
                    borderRadius: BorderRadius.all(
                        Radius.circular(MediaQuery.sizeOf(context).width))),
                padding:
                    EdgeInsets.all(MediaQuery.of(context).size.width * .01),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  height: MediaQuery.of(context).size.height * .6,
                  child: Image.asset('assets/exp1.png',
                      alignment: Alignment.center, fit: BoxFit.contain),
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .1,
              child: const RiveAnimation.asset(
                shapes2,
                fit: BoxFit.fitWidth,
              ),
            )
          ],
        ),
      ),
    );
  }
}
