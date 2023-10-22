//Paquetes de la aplicacion
import 'package:flutter/material.dart';

export 'package:flutter/material.dart';
export 'package:hooks_riverpod/hooks_riverpod.dart';
export 'package:url_launcher/url_launcher.dart';
export 'package:url_strategy/url_strategy.dart';
export 'package:math_hackers_page/widgets/responsive_widget.dart';
export 'package:math_hackers_page/widgets/navbar.dart';
export 'package:math_hackers_page/widgets/navbar_button.dart';
export 'package:math_hackers_page/widgets/shapes_container.dart';
export 'package:flutter_hooks/flutter_hooks.dart';
export 'package:math_hackers_page/providers/providers.dart';
export 'package:math_hackers_page/theme/colors.dart';
export 'package:google_fonts/google_fonts.dart';
export 'package:rive/rive_web.dart';
export 'package:webview_flutter/webview_flutter.dart';

//Rutas de la pagina
export 'package:math_hackers_page/app.dart';
export 'package:math_hackers_page/pages/home.dart';
export 'package:math_hackers_page/pages/content/home_dontent.dart';
export 'package:math_hackers_page/pages/content/desafio_dontent.dart';
export 'package:math_hackers_page/pages/content/hackathon_dontent.dart';
export 'package:math_hackers_page/pages/content/sepsis_dontent.dart';
export 'package:math_hackers_page/pages/content/code_dontent.dart';
export 'package:math_hackers_page/pages/content/detection_dontent.dart';
export 'package:math_hackers_page/pages/content/sobre_dontent.dart';

final homeKey = GlobalKey();
final hackathonKey = GlobalKey();
final desafioKey = GlobalKey();
final aboutKey = GlobalKey();
final sepsisKey = GlobalKey();
final codeKey = GlobalKey();
final detectionKey = GlobalKey();

const linkLaCoNGA = 'https://www.youtube.com/embed/6pN5c834vY8';

final List<String> sirs = [
'Fiebre o hipotermia (temperatura corporal alta o baja).',
'Taquicardia (frecuencia cardíaca elevada).',
'Taquipnea (frecuencia respiratoria elevada).',
'Recuento de glóbulos blancos elevado (leucocitosis) o bajo (leucopenia).',
];

final List<String> qsofa = [
'Frecuencia respiratoria igual o superior a 22 respiraciones por minuto.',
'Presión arterial sistólica igual o inferior a 100 mm Hg.',
'Estado mental alterado (confusión o disminución del nivel de conciencia, con una puntuación de Glasgow menor o igual a 14).',
];
final List<String> sofa = [
'Respiratorio.',
'Sistema nervioso central.',
'Cardiovascular.',
'Hepático.',
'Coagulación.',
'Renal.'
];
final List<String> refs = [
'Beltran, C. F. T., Ibañez, E. D. V., Orejuela, V. M., & García Henao, J. A. (2022, September). A Machine Learning-Based Missing Data Imputation with FHIR Interoperability Approach in Sepsis Prediction. In Latin American High Performance Computing Conference (pp. 116-130). Cham: Springer International Publishing.',
'Reyna, M. A., Josef, C. S., Jeter, R., Shashikumar, S. P., Westover, M. B., Nemati, S., ... & Sharma, A. (2020). Early prediction of sepsis from clinical data: the PhysioNet/Computing in Cardiology Challenge 2019. Critical care medicine, 48(2), 210-217.',
];


