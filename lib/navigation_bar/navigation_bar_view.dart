import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavigationBarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, size) {
        return Container(
          height: 100,
          width: 1507,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              FlutterLogo(),
              Spacer(),
              InkWell(
                mouseCursor: MaterialStateMouseCursor.clickable,
                hoverColor: Colors.transparent,
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () {},
                child: const Text(
                  'About me',
                  style: TextStyle(fontSize: 24),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
