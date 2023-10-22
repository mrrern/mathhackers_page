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
          height: MediaQuery.of(context).size.height * .1,
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
         Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            
            SizedBox(
              width: MediaQuery.of(context).size.width * .4,
              height: MediaQuery.of(context).size.height * .6,
              child: Center(
                child: Row(
                  children: [
                    Center(
                      child: Text('Oscar Altuve',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.josefinSans(
                            textStyle: TextStyle(
                              color: darkBlue,
                              fontWeight: FontWeight.w800,
                              fontSize: MediaQuery.of(context).size.width * .02,
                            ),
                          )),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .6,
                      width: MediaQuery.of(context).size.width * .6,

                    ),
                    Text(
                      'Soy egresado de la Licenciatura en Física en la Universidad de Los Andes (ULA), participé de la 2da. cohorte de LA-CoNGA physics y actualmente soy estudiante de la Maestría en Física en la Universidad Simón Bolívar (USB) en Venezuela. Mi área de estudio es física de altas energías experimental y ciencia de datos. Tengo habilidades en programación en C++ y Python, reproducibilidad científica, manejo herramientas de edición multimedia y nociones en diseño web. Participé en el hackathon CoAfina 2022, una experiencia maravillosa que me permitió colaborar con otros estudiantes de América Latina para encontrar soluciones innovadoras a retos científicos y educativos usando datos abiertos. Es un placer formar parte de esta nueva edición y espero seguir compartiendo y aprendiendo con todos ustedes. Me pueden conseguir en LinkedIn: https://ve.linkedin.com/in/altuos/',
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
                      child: Text('Richard Brito',
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
                      'Hola, soy Richard Brito, estudiante de física de la Universidad de los Andes, de Caicara del Orinoco, Bolívar, Venezuela, pero radicado en Mérida, amante de los gatos, fanático practicante del deporte, sobre todo Taekwondo y Voleibol. Entusiasta de la ciencia de datos y redes neuronales, energías sustentables, vehículos eléctricos, casas ecoamigables y autosustentables ,IAs y linuxero también. Iniciando un emprendimiento para reciclaje de prendas y plásticos para darles una segunda vida, a través de impresión 3D y bricolaje, de todo un poquito, emocionado por aprender mucho en este hackathon y compartir con todos ustedes, espero no se haya hecho larga mi presentación.',
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
                      child: Text('Daniel Vielma',
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
                      'Actualmente estudiante de la carrera ciencias matematicas en la Universidad de los andes, me dedico principalmente en el área de ciencia de datos y machine learning. Es mi primera participacion en el hackathon CoAfina, lo cual me parecio una experiencia muy entretenida y retadora. Para mas informacion de contacto pueden revisar mi perfil de LinkedIn: https://www.linkedin.com/in/daniel-vielma-10bb42269/',
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
                      child: Text('Geison Blanco',
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
                      'Estudiante de Ingeniería de Sistemas de la Universidad Industrial de Santander. Durante mi etapa de estudiante me ha interesado el campo del Aprendizaje de Máquina. Es por esto que cuento con conocimientos sobre implementación de algoritmos de aprendizaje profundo en python, usando librerias de tensorflow y pytorch. También tengo conocimientos en herramientas de tratamiento de datos científicos como numpy y Pandas, así como también en su análisis en forma de gráficas con librerias como matplotlib. Además de manejar muy bien python como lenguaje de programación, también puedo programar en otros lenguajes como Java, C++, Matlab, y en lenguajes de gestión de base de datos como SQL. Perfil de LinkedIn: www.linkedin.com/in/geison-alfredo-blanco-rodriguez-861b17249',
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
                      child: Text('Grendel Lacruz',
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
                      'Soy Licenciado en Física egresado de la Universidad de Los Andes (ULA - Venezuela). Tengo conocimientos de Python. Quiero dedicarme a la Fusión Nuclear y desarrollarme como científico. Estoy muy interesado en aprender sobre la ciencia de datos y por eso el hackaton ha sido una gran oportunidad.',
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
       

         SizedBox(
          height: MediaQuery.of(context).size.height * .03,
        ),
        
      ]),
    );
  }
}
