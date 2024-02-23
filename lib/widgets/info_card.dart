import 'package:math_hackers_page/routes/linkspage.dart';

class InfoCard extends StatelessWidget {
  final String info;
  final String url;
  final String name;
  final String image;

  const InfoCard({
    super.key, required this.info, required this.url, required this.name, required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .7,
      child: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .6,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * .2,
                      height: MediaQuery.of(context).size.height * .1,
                      padding: EdgeInsets.all(
                          MediaQuery.of(context).size.width * .01),
                      child: Text(name,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.josefinSans(
                            textStyle: TextStyle(
                              color: darkBlue,
                              fontWeight: FontWeight.w800,
                              fontSize: MediaQuery.of(context).size.width * .02,
                            ),
                          )),
                    ),
                    CircleAvatar(
                      backgroundColor: darkBlue,
                      foregroundImage: AssetImage(image),
                      maxRadius: MediaQuery.sizeOf(context).aspectRatio * 35,
                    )
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * .5,
                      height: MediaQuery.of(context).size.height * .4,
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * .01,
                          vertical: MediaQuery.of(context).size.height * .01),
                      child: Text(
                        info,
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          color: darkBlue,
                          fontSize: MediaQuery.of(context).size.width * .012,
                        )),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * .5,
                      height: MediaQuery.of(context).size.height * .1,
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * .01,
                          vertical: MediaQuery.of(context).size.height * .01),
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * .01),
                      child: GestureDetector(
                        onTap: () {
                          
                          launchUrl(Uri.parse(url));
                        },
                        child: Text('Mi Link',
                            style: GoogleFonts.josefinSans(
                              textStyle: TextStyle(
                                color: darkBlue,
                                fontWeight: FontWeight.w800,
                                fontSize:
                                    MediaQuery.of(context).size.width * .02,
                              ),
                            )),
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

