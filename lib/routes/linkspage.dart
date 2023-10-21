//Paquetes de la aplicacion
import 'package:flutter/material.dart';

export 'package:flutter/material.dart';
export 'package:hooks_riverpod/hooks_riverpod.dart';
export 'package:url_launcher/url_launcher.dart';
export 'package:url_strategy/url_strategy.dart';
export 'package:math_hackers_page/widgets/responsive_widget.dart';
export 'package:math_hackers_page/widgets/navbar.dart';
export 'package:math_hackers_page/widgets/navbar_button.dart';
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
export 'package:math_hackers_page/pages/content/sobre_dontent.dart';

final homeKey = GlobalKey();
final hackathonKey = GlobalKey();
final desafioKey = GlobalKey();
final aboutKey = GlobalKey();

const linkLaCoNGA = 'https://www.youtube.com/embed/wuV2q0qc1jo';
