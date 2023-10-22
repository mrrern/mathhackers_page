import 'package:math_hackers_page/routes/linkspage.dart';

class SepsisContent extends ResponsiveWidget {
  const SepsisContent({super.key});

  @override
  Widget buildDesktop(BuildContext context) {
    return const DesktopS();
  }

  @override
  Widget buildMobile(BuildContext context) {
    return const MobilS();
  }
}

class DesktopS extends HookConsumerWidget {
  const DesktopS({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * .1,
          child: Center(
            child: Text('Sepsis',
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
              'La sepsis es una respuesta inflamatoria sistémica grave del cuerpo a una infección. Esta respuesta anormal se desencadena cuando el sistema inmunológico responde de manera exagerada y libera una cascada de mediadores inflamatorios en la sangre. En lugar de controlar y limitar la infección, el cuerpo comienza a dañar sus propios tejidos y órganos. La sepsis puede tener un impacto potencialmente mortal en el cuerpo y requiere atención médica urgente.',
              textAlign: TextAlign.justify,
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                color: darkBlue,
                fontSize: MediaQuery.of(context).size.width * .0136,
              )),
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .03,
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
                      child: Text('Causas',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.josefinSans(
                            textStyle: TextStyle(
                              color: darkBlue,
                              fontWeight: FontWeight.w800,
                              fontSize: MediaQuery.of(context).size.width * .02,
                            ),
                          )),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .01,
                    ),
                    Text(
                      'Las causas de la sepsis son diversas e incluyen infecciones bacterianas, virales, fúngicas o parasitarias. La fuente de la infección puede estar en cualquier parte del cuerpo, desde los pulmones hasta el tracto urinario o incluso una herida en la piel. La sepsis a menudo se desarrolla cuando una infección no se controla o se trata adecuadamente, permitiendo que las bacterias u otros patógenos se propaguen en la sangre.',
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
                      child: Text('Síntomas',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.josefinSans(
                            textStyle: TextStyle(
                              color: darkBlue,
                              fontWeight: FontWeight.w800,
                              fontSize: MediaQuery.of(context).size.width * .02,
                            ),
                          )),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .01,
                    ),
                    Text(
                      'La sepsis presenta una variedad de síntomas que pueden variar en gravedad. Estos pueden incluir fiebre alta o hipotermia (temperatura corporal baja), taquicardia (ritmo cardíaco acelerado), taquipnea (respiración rápida), confusión o cambios en el estado mental, hipotensión (presión arterial baja), coloración de la piel anormal (pálida, moteada o cianótica) y signos de disfunción orgánica, como dificultad para respirar o insuficiencia renal.',
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
        SizedBox(
          height: MediaQuery.of(context).size.height * .03,
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
                      child: Text('Detección y Diagnóstico',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.josefinSans(
                            textStyle: TextStyle(
                              color: darkBlue,
                              fontWeight: FontWeight.w800,
                              fontSize: MediaQuery.of(context).size.width * .02,
                            ),
                          )),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .01,
                    ),
                    Text(
                      'El diagnóstico de la sepsis implica una evaluación clínica minuciosa por parte del personal médico, análisis de laboratorio y, en algunos casos, estudios de imagen. Los análisis de sangre, como el recuento de glóbulos blancos y los niveles de lactato en sangre, son indicadores comunes de sepsis. También se utilizan sistemas de puntuación, como el SOFA (Sequential Organ Failure Assessment), para evaluar la gravedad de la disfunción orgánica.',
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
                      child: Text('Importancia de la detección temprana',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.josefinSans(
                            textStyle: TextStyle(
                              color: darkBlue,
                              fontWeight: FontWeight.w800,
                              fontSize: MediaQuery.of(context).size.width * .02,
                            ),
                          )),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .01,
                    ),
                    Text(
                      'La sepsis puede progresar rápidamente, lo que la convierte en una emergencia médica. La detección temprana es crítica para iniciar el tratamiento adecuado antes de que la condición se deteriore significativamente. Un diagnóstico y tratamiento oportunos aumentan significativamente las posibilidades de supervivencia.a',
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
        // OTO
        //
        //
        //
        SizedBox(
          height: MediaQuery.of(context).size.height * .03,
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
                      child: Text('Tratamiento',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.josefinSans(
                            textStyle: TextStyle(
                              color: darkBlue,
                              fontWeight: FontWeight.w800,
                              fontSize: MediaQuery.of(context).size.width * .02,
                            ),
                          )),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .01,
                    ),
                    Text(
                      'El tratamiento de la sepsis implica abordar la infección subyacente con antibióticos específicos y proporcionar apoyo hemodinámico para estabilizar la presión arterial. Además, puede requerir terapia de soporte de órganos, como la administración de líquidos intravenosos o la ventilación mecánica. El tratamiento se adapta a las necesidades específicas de cada paciente.',
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
                      child: Text('Complicaciones',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.josefinSans(
                            textStyle: TextStyle(
                              color: darkBlue,
                              fontWeight: FontWeight.w800,
                              fontSize: MediaQuery.of(context).size.width * .02,
                            ),
                          )),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .01,
                    ),
                    Text(
                      'La sepsis puede dañar gravemente los órganos y tejidos, lo que puede resultar en complicaciones a largo plazo. Los órganos más comúnmente afectados incluyen los riñones, el hígado, el corazón y los pulmones. Las complicaciones pueden llevar a insuficiencias crónicas y discapacidades cognitivas en pacientes sobrevivientes.',
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
        SizedBox(
          height: MediaQuery.of(context).size.height * .03,
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
                      child: Text('Pronóstico',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.josefinSans(
                            textStyle: TextStyle(
                              color: darkBlue,
                              fontWeight: FontWeight.w800,
                              fontSize: MediaQuery.of(context).size.width * .02,
                            ),
                          )),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .01,
                    ),
                    Text(
                      'El pronóstico de la sepsis varía según la gravedad de la afección y la prontitud del tratamiento. En casos graves, la sepsis puede ser mortal, pero con tratamiento adecuado y oportuno, muchas personas se recuperan por completo. La recuperación puede llevar tiempo y rehabilitación.',
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
                      child: Text('Prevención',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.josefinSans(
                            textStyle: TextStyle(
                              color: darkBlue,
                              fontWeight: FontWeight.w800,
                              fontSize: MediaQuery.of(context).size.width * .02,
                            ),
                          )),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .01,
                    ),
                    Text(
                      'La prevención de la sepsis implica medidas como mantener una buena higiene, administrar vacunas adecuadas, tratar infecciones a tiempo y cuidar heridas correctamente. La educación y la concienciación pública son clave para la prevención.',
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
        //
        //
        //
        SizedBox(
          height: MediaQuery.of(context).size.height * .03,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * .1,
          child: Center(
            child: Text('Investigación y avances',
                textAlign: TextAlign.center,
                style: GoogleFonts.josefinSans(
                  textStyle: TextStyle(
                    color: darkBlue,
                    fontWeight: FontWeight.w800,
                    fontSize: MediaQuery.of(context).size.width * .03,
                  ),
                )),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .02,
        ),

        SizedBox(
          width: MediaQuery.of(context).size.width * .4,
          height: MediaQuery.of(context).size.height * .6,
          child: Center(
            child: Text(
              'La investigación en el campo de la sepsis es un componente esencial para mejorar la comprensión y el tratamiento de esta condición. Se están llevando a cabo investigaciones continuas para abordar varios aspectos de la sepsis:',
              textAlign: TextAlign.justify,
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                color: darkBlue,
                fontSize: MediaQuery.of(context).size.width * .0136,
              )),
            ),
          ),
        ),

        SizedBox(
          height: MediaQuery.of(context).size.height * .05,
        ),

        const ListItem(
            text:
                'Mecanismos subyacentes: Los científicos están investigando en profundidad los mecanismos biológicos que desencadenan la respuesta inflamatoria sistémica en la sepsis. Comprender mejor estos procesos puede conducir al desarrollo de terapias dirigidas específicamente a estos mecanismos.'),
        SizedBox(
          height: MediaQuery.of(context).size.height * .05,
        ),
        const ListItem(
            text:
                'Identificación de biomarcadores: Se buscan biomarcadores en la sangre u otros fluidos corporales que puedan indicar la presencia de sepsis de manera temprana y precisa. Estos biomarcadores podrían revolucionar la detección y el diagnóstico de la sepsis.'),
        SizedBox(
          height: MediaQuery.of(context).size.height * .05,
        ),
        const ListItem(
            text:
                'Desarrollo de terapias específicas: La investigación se centra en el desarrollo de tratamientos más efectivos y específicos para combatir la sepsis. Esto incluye la exploración de nuevos antibióticos, terapias inmunomoduladoras y enfoques para proteger los órganos durante la sepsis.'),
        SizedBox(
          height: MediaQuery.of(context).size.height * .05,
        ),
        const ListItem(
            text:
                'Mejora de los protocolos de tratamiento: Los estudios clínicos y la investigación en atención crítica buscan optimizar los protocolos de tratamiento para la sepsis. Esto implica determinar las mejores estrategias de administración de medicamentos, apoyo hemodinámico y otros aspectos del cuidado del paciente.'),
        SizedBox(
          height: MediaQuery.of(context).size.height * .05,
        ),
        const ListItem(
            text:
                'Prevención de la sepsis: Se investiga cómo prevenir la sepsis en situaciones de alto riesgo, como en pacientes hospitalizados o en unidades de cuidados intensivos. Esto incluye la identificación de factores de riesgo y la mejora de las prácticas de higiene y control de infecciones.'),
        SizedBox(
          height: MediaQuery.of(context).size.height * .05,
        ),
        const ListItem(
            text:
                'Avances en tecnología médica: La tecnología desempeña un papel importante en la detección y el tratamiento de la sepsis. Los investigadores están explorando el uso de algoritmos de inteligencia artificial y sistemas de monitorización avanzados para identificar la sepsis en sus primeras etapas.'),
        SizedBox(
          height: MediaQuery.of(context).size.height * .05,
        ),
//
//
//
        SizedBox(
          height: MediaQuery.of(context).size.height * .03,
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
                      child: Text('Impacto en la salud pública',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.josefinSans(
                            textStyle: TextStyle(
                              color: darkBlue,
                              fontWeight: FontWeight.w800,
                              fontSize: MediaQuery.of(context).size.width * .02,
                            ),
                          )),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .01,
                    ),
                    Text(
                      'La sepsis tiene un impacto significativo en la salud pública. Afecta a un gran número de personas en todo el mundo y representa una carga económica considerable en términos de atención médica y recursos.',
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
                      child: Text('Concienciación y educación',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.josefinSans(
                            textStyle: TextStyle(
                              color: darkBlue,
                              fontWeight: FontWeight.w800,
                              fontSize: MediaQuery.of(context).size.width * .02,
                            ),
                          )),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .01,
                    ),
                    Text(
                      'La concienciación pública sobre la sepsis es fundamental para promover la detección temprana y la prevención. La educación sobre los síntomas, factores de riesgo y cómo actuar en caso de sospecha de sepsis es esencial para salvar vidas.',
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
      ]),
    );
  }
}

class MobilS extends HookConsumerWidget {
  const MobilS({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(children: [

        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * .1,
          child: Center(
            child: Text('Sepsis',
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
              'La sepsis es una respuesta inflamatoria sistémica grave del cuerpo a una infección. Esta respuesta anormal se desencadena cuando el sistema inmunológico responde de manera exagerada y libera una cascada de mediadores inflamatorios en la sangre. En lugar de controlar y limitar la infección, el cuerpo comienza a dañar sus propios tejidos y órganos. La sepsis puede tener un impacto potencialmente mortal en el cuerpo y requiere atención médica urgente.',
              textAlign: TextAlign.justify,
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                color: darkBlue,
                fontSize: MediaQuery.of(context).size.width * .0136,
              )),
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
                      child: Text('Detección y Diagnóstico',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.josefinSans(
                            textStyle: TextStyle(
                              color: darkBlue,
                              fontWeight: FontWeight.w800,
                              fontSize: MediaQuery.of(context).size.width * .02,
                            ),
                          )),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .01,
                    ),
                    Text(
                      'El diagnóstico de la sepsis implica una evaluación clínica minuciosa por parte del personal médico, análisis de laboratorio y, en algunos casos, estudios de imagen. Los análisis de sangre, como el recuento de glóbulos blancos y los niveles de lactato en sangre, son indicadores comunes de sepsis. También se utilizan sistemas de puntuación, como el SOFA (Sequential Organ Failure Assessment), para evaluar la gravedad de la disfunción orgánica.',
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
                      child: Text('Importancia de la detección temprana',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.josefinSans(
                            textStyle: TextStyle(
                              color: darkBlue,
                              fontWeight: FontWeight.w800,
                              fontSize: MediaQuery.of(context).size.width * .02,
                            ),
                          )),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .01,
                    ),
                    Text(
                      'La sepsis puede progresar rápidamente, lo que la convierte en una emergencia médica. La detección temprana es crítica para iniciar el tratamiento adecuado antes de que la condición se deteriore significativamente. Un diagnóstico y tratamiento oportunos aumentan significativamente las posibilidades de supervivencia.a',
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
                      child: Text('Tratamiento',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.josefinSans(
                            textStyle: TextStyle(
                              color: darkBlue,
                              fontWeight: FontWeight.w800,
                              fontSize: MediaQuery.of(context).size.width * .02,
                            ),
                          )),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .01,
                    ),
                    Text(
                      'El tratamiento de la sepsis implica abordar la infección subyacente con antibióticos específicos y proporcionar apoyo hemodinámico para estabilizar la presión arterial. Además, puede requerir terapia de soporte de órganos, como la administración de líquidos intravenosos o la ventilación mecánica. El tratamiento se adapta a las necesidades específicas de cada paciente.',
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
                      child: Text('Complicaciones',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.josefinSans(
                            textStyle: TextStyle(
                              color: darkBlue,
                              fontWeight: FontWeight.w800,
                              fontSize: MediaQuery.of(context).size.width * .02,
                            ),
                          )),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .01,
                    ),
                    Text(
                      'La sepsis puede dañar gravemente los órganos y tejidos, lo que puede resultar en complicaciones a largo plazo. Los órganos más comúnmente afectados incluyen los riñones, el hígado, el corazón y los pulmones. Las complicaciones pueden llevar a insuficiencias crónicas y discapacidades cognitivas en pacientes sobrevivientes.',
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
                      child: Text('Pronóstico',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.josefinSans(
                            textStyle: TextStyle(
                              color: darkBlue,
                              fontWeight: FontWeight.w800,
                              fontSize: MediaQuery.of(context).size.width * .02,
                            ),
                          )),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .01,
                    ),
                    Text(
                      'El pronóstico de la sepsis varía según la gravedad de la afección y la prontitud del tratamiento. En casos graves, la sepsis puede ser mortal, pero con tratamiento adecuado y oportuno, muchas personas se recuperan por completo. La recuperación puede llevar tiempo y rehabilitación.',
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
                      child: Text('Prevención',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.josefinSans(
                            textStyle: TextStyle(
                              color: darkBlue,
                              fontWeight: FontWeight.w800,
                              fontSize: MediaQuery.of(context).size.width * .02,
                            ),
                          )),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .01,
                    ),
                    Text(
                      'La prevención de la sepsis implica medidas como mantener una buena higiene, administrar vacunas adecuadas, tratar infecciones a tiempo y cuidar heridas correctamente. La educación y la concienciación pública son clave para la prevención.',
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
          height: MediaQuery.of(context).size.height * .03,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * .1,
          child: Center(
            child: Text('Investigación y avances',
                textAlign: TextAlign.center,
                style: GoogleFonts.josefinSans(
                  textStyle: TextStyle(
                    color: darkBlue,
                    fontWeight: FontWeight.w800,
                    fontSize: MediaQuery.of(context).size.width * .03,
                  ),
                )),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .02,
        ),

        SizedBox(
          width: MediaQuery.of(context).size.width * .4,
          height: MediaQuery.of(context).size.height * .6,
          child: Center(
            child: Text(
              'La investigación en el campo de la sepsis es un componente esencial para mejorar la comprensión y el tratamiento de esta condición. Se están llevando a cabo investigaciones continuas para abordar varios aspectos de la sepsis:',
              textAlign: TextAlign.justify,
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                color: darkBlue,
                fontSize: MediaQuery.of(context).size.width * .0136,
              )),
            ),
          ),
        ),

        SizedBox(
          height: MediaQuery.of(context).size.height * .05,
        ),

        const ListItem(
            text:
                'Mecanismos subyacentes: Los científicos están investigando en profundidad los mecanismos biológicos que desencadenan la respuesta inflamatoria sistémica en la sepsis. Comprender mejor estos procesos puede conducir al desarrollo de terapias dirigidas específicamente a estos mecanismos.'),
        SizedBox(
          height: MediaQuery.of(context).size.height * .05,
        ),
        const ListItem(
            text:
                'Identificación de biomarcadores: Se buscan biomarcadores en la sangre u otros fluidos corporales que puedan indicar la presencia de sepsis de manera temprana y precisa. Estos biomarcadores podrían revolucionar la detección y el diagnóstico de la sepsis.'),
        SizedBox(
          height: MediaQuery.of(context).size.height * .05,
        ),
        const ListItem(
            text:
                'Desarrollo de terapias específicas: La investigación se centra en el desarrollo de tratamientos más efectivos y específicos para combatir la sepsis. Esto incluye la exploración de nuevos antibióticos, terapias inmunomoduladoras y enfoques para proteger los órganos durante la sepsis.'),
        SizedBox(
          height: MediaQuery.of(context).size.height * .05,
        ),
        const ListItem(
            text:
                'Mejora de los protocolos de tratamiento: Los estudios clínicos y la investigación en atención crítica buscan optimizar los protocolos de tratamiento para la sepsis. Esto implica determinar las mejores estrategias de administración de medicamentos, apoyo hemodinámico y otros aspectos del cuidado del paciente.'),
        SizedBox(
          height: MediaQuery.of(context).size.height * .05,
        ),
        const ListItem(
            text:
                'Prevención de la sepsis: Se investiga cómo prevenir la sepsis en situaciones de alto riesgo, como en pacientes hospitalizados o en unidades de cuidados intensivos. Esto incluye la identificación de factores de riesgo y la mejora de las prácticas de higiene y control de infecciones.'),
        SizedBox(
          height: MediaQuery.of(context).size.height * .05,
        ),
        const ListItem(
            text:
                'Avances en tecnología médica: La tecnología desempeña un papel importante en la detección y el tratamiento de la sepsis. Los investigadores están explorando el uso de algoritmos de inteligencia artificial y sistemas de monitorización avanzados para identificar la sepsis en sus primeras etapas.'),
        SizedBox(
          height: MediaQuery.of(context).size.height * .05,
        ),
//
//
//
        SizedBox(
          height: MediaQuery.of(context).size.height * .03,
        ),


        SizedBox(
              width: MediaQuery.of(context).size.width * .4,
              height: MediaQuery.of(context).size.height * .6,
              child: Center(
                child: Column(
                  children: [
                    Center(
                      child: Text('Impacto en la salud pública',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.josefinSans(
                            textStyle: TextStyle(
                              color: darkBlue,
                              fontWeight: FontWeight.w800,
                              fontSize: MediaQuery.of(context).size.width * .02,
                            ),
                          )),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .01,
                    ),
                    Text(
                      'La sepsis tiene un impacto significativo en la salud pública. Afecta a un gran número de personas en todo el mundo y representa una carga económica considerable en términos de atención médica y recursos.',
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
                      child: Text('Concienciación y educación',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.josefinSans(
                            textStyle: TextStyle(
                              color: darkBlue,
                              fontWeight: FontWeight.w800,
                              fontSize: MediaQuery.of(context).size.width * .02,
                            ),
                          )),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .01,
                    ),
                    Text(
                      'La concienciación pública sobre la sepsis es fundamental para promover la detección temprana y la prevención. La educación sobre los síntomas, factores de riesgo y cómo actuar en caso de sospecha de sepsis es esencial para salvar vidas.',
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
            


      ]),
    );
  }
}

class ListItem extends StatelessWidget {
  final String text;
  const ListItem({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .4,
      height: MediaQuery.of(context).size.height * .6,
      child: Center(
        child: Text(text,
            textAlign: TextAlign.center,
            style: GoogleFonts.josefinSans(
              textStyle: TextStyle(
                color: darkBlue,
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.width * .015,
              ),
            )),
      ),
    );
  }
}
