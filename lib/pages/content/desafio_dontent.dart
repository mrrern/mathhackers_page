import 'package:math_hackers_page/routes/linkspage.dart';

class DesafioContent extends ResponsiveWidget {
  const DesafioContent({super.key});

  @override
  Widget buildDesktop(BuildContext context) {
    return const DeskR();
  }

  @override
  Widget buildMobile(BuildContext context) {
    return MobR();
  }
}

//Desktop Widget
//
//
//
//
class DeskR extends HookConsumerWidget {
  const DeskR({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * .05,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * .4,
              height: MediaQuery.of(context).size.height * .6,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('DESAFIO',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.josefinSans(
                          textStyle: TextStyle(
                            color: darkBlue,
                            fontWeight: FontWeight.w800,
                            fontSize: MediaQuery.of(context).size.width * .03,
                          ),
                        )),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .3,
                      height: MediaQuery.of(context).size.height * .3,
                      child: Image.asset('assets/modesafed.png',
                          alignment: Alignment.center, fit: BoxFit.contain),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .5,
              height: MediaQuery.of(context).size.height * .6,
              child: Center(
                child: Text(
                  'Modelo para la Detección de Pacientes Detectados por Sepsis, es un software que permite, a través del modelo Sepsis-Tracker, una ayuda al profesional de la salud, al dar una aproximación a partir de sus propios signos vitales y estudios para dar un resultado del riesgo que corre el paciente de presentar Sepsis en sus tipos de grados ',
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    color: darkBlue,
                    fontSize: MediaQuery.of(context).size.width * .0136,
                  )),
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}

//Desktop Widget
//
//
//
//
class MobR extends HookConsumerWidget {
  const MobR({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(children: [
        Column(
          children: [
            Center(
              child: Text('DESAFIO',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.josefinSans(
                    textStyle: TextStyle(
                      color: darkBlue,
                      fontWeight: FontWeight.w800,
                      fontSize: MediaQuery.of(context).size.width * .03,
                    ),
                  )),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .8,
              height: MediaQuery.of(context).size.height * .3,
              child: Image.asset('assets/modesafed.png',
                  alignment: Alignment.center, fit: BoxFit.contain),
            ),
          ],
        ),
        const SizedBox(
          width: 10,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * .5,
          height: MediaQuery.of(context).size.height * .6,
          child: Center(
            child: Text(
              'Modelo para la Detección de Pacientes Detectados por Sepsis, es un software que permite, a través del modelo Sepsis-Tracker, una ayuda al profesional de la salud, al dar una aproximación a partir de sus propios signos vitales y estudios para dar un resultado del riesgo que corre el paciente de presentar Sepsis en sus tipos de grados ',
              textAlign: TextAlign.justify,
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                color: darkBlue,
                fontSize: MediaQuery.of(context).size.width * .0136,
              )),
            ),
          ),
        ),
      ]),
    );
  }
}
