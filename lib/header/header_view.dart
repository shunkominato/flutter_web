import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:hellow_world/utils/hover_extensions.dart';

class HeaderView extends StatelessWidget {
  const HeaderView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (_, size) {
        if (size.isMobile) return HeaderMobileView();
        return Container(
          height: 864,
          width: 1507,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Expanded(
                  child: HeaderBody(),
                ),
                FlutterLogo(
                  size: 300,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

class HeaderBody extends StatelessWidget {
  final bool isMobile;
  const HeaderBody({
    Key key,
    this.isMobile = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AutoSizeText(
          'Im a Mobile',
          style: GoogleFonts.montserrat(fontSize: 60),
          maxLines: 1,
        ),
        AutoSizeText(
          'developer',
          style: GoogleFonts.montserrat(fontSize: 60),
          maxLines: 1,
        ),
        SizedBox(height: isMobile ?? false ? 20 : 37),
        AutoSizeText(
          'sample',
          style: TextStyle(fontSize: 24),
          maxLines: 1,
        ),
        SizedBox(height: isMobile ?? false ? 20 : 40),
        FlatButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          color: Colors.redAccent,
          onPressed: () {},
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: isMobile ?? false ? 10 : 17,
              horizontal: isMobile ?? false ? 8 : 15,
            ),
            child: Text(
              'contact me',
              style: TextStyle(
                fontSize: isMobile ?? false ? 20 : 24,
                color: Colors.white,
              ),
            ),
          ),
        ).showCursorOnHover,
      ],
    );
  }
}

class HeaderMobileView extends StatelessWidget {
  const HeaderMobileView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      height: height * 0.9,
      width: width,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        children: [
          FlutterLogo(size: height * 0.3),
          Spacer(),
          HeaderBody(isMobile: true),
        ],
      ),
    );
  }
}