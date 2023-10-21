import 'package:math_hackers_page/routes/linkspage.dart';

class NavBarButton extends HookConsumerWidget {
  final VoidCallback onTap;
  final String text;

  const NavBarButton({
    Key? key,
    required this.onTap,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textColor = useState<Color>(mid2Blue);

    return MouseRegion(
      onEnter: (value) {
        textColor.value = lightYellow;
      },
      onExit: (value) {
        textColor.value = mid2Blue;
      },
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Container(
            height: 50,
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              text,
              style: GoogleFonts.josefinSans(
                  textStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: textColor.value,
              )),
            ),
          ),
        ),
      ),
    );
  }
}
