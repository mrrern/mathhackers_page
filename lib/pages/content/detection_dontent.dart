import 'package:math_hackers_page/routes/linkspage.dart';

class DetectionContent extends ResponsiveWidget {
  const DetectionContent({super.key});

  @override
  Widget buildDesktop(BuildContext context) {
    return const DetDesktop();
  }

  @override
  Widget buildMobile(BuildContext context) {
    // TODO: implement buildMobile
    return const DetMobil();
  }
}

class DetDesktop extends HookConsumerWidget {
  const DetDesktop({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .1,
            child: Center(
              child: Text('Métodos de detección de la sepsis',
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
            height: MediaQuery.of(context).size.height * .05,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * .4,
            height: MediaQuery.of(context).size.height * .6,
            child: Center(
              child: Text(
                'La detección de la sepsis se basa en una combinación de evaluación clínica, análisis de laboratorio y, en algunos casos, estudios de imagen. Los términos SIRS, qSOFA y SOFA son sistemas de puntuación utilizados en el ámbito médico para evaluar la gravedad de la respuesta inflamatoria sistémica y la disfunción orgánica. Cada uno se utiliza en un contexto específico:',
                textAlign: TextAlign.justify,
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  color: darkBlue,
                  fontSize: MediaQuery.of(context).size.width * .0136,
                )),
              ),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .4,
                height: MediaQuery.of(context).size.height * .6,
                child: Center(
                  child: Column(
                    children: [
                      Center(
                        child: Text(
                            'SIRS (Síndrome de Respuesta Inflamatoria Sistémica):',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.josefinSans(
                              textStyle: TextStyle(
                                color: darkBlue,
                                fontWeight: FontWeight.w800,
                                fontSize:
                                    MediaQuery.of(context).size.width * .02,
                              ),
                            )),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .01,
                      ),
                      Text(
                        'El SIRS es un conjunto de criterios clínicos que se utiliza para identificar la respuesta inflamatoria sistémica en un paciente. Los criterios del SIRS incluyen: Fiebre o hipotermia (temperatura corporal alta o baja). Taquicardia (frecuencia cardíaca elevada). Taquipnea (frecuencia respiratoria elevada). Recuento de glóbulos blancos elevado (leucocitosis) o bajo (leucopenia).',
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
                child: Center(
                  child: Column(
                    children: [
                      Center(
                        child: Text('qSOFA (Quick Sequential Organ Failure Assessment):',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.josefinSans(
                              textStyle: TextStyle(
                                color: darkBlue,
                                fontWeight: FontWeight.w800,
                                fontSize:
                                    MediaQuery.of(context).size.width * .02,
                              ),
                            )),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .01,
                      ),
                      Text(
                        'El qSOFA es una herramienta simplificada para evaluar la gravedad de la sepsis en pacientes fuera de la unidad de cuidados intensivos (UCI). Incluye tres criterios clínicos simples: Frecuencia respiratoria igual o superior a 22 respiraciones por minuto.Presión arterial sistólica igual o inferior a 100 mm Hg. Estado mental alterado (confusión o disminución del nivel de conciencia, con una puntuación de Glasgow menor o igual a 14). Un puntaje de qSOFA mayor o igual a 2 puntos indica un mayor riesgo de mal pronóstico en pacientes con sospecha de infección. Es una herramienta de evaluación rápida y fácil de aplicar.',
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
              )
            ],
          ),
        ],
      ),
    );
  }
}

class DetMobil extends HookConsumerWidget {
  const DetMobil({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [],
      ),
    );
  }
}
