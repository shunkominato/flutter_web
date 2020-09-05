import 'package:flutter/material.dart';
import 'package:hellow_world/utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SkillsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (_, size) {
      if (size.isMobile) return SkillsMobileView();
      return SkillsDesktopView();
    });
  }
}

class SkillsDesktopView extends StatelessWidget {
  const SkillsDesktopView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: kScreenPadding,
        width: kInitWidth,
        child: Column(
          children: [
            Text(
              'Skils',
              style: Theme.of(context).textTheme.headline2,
            )
          ],
        ));
  }
}

class SkillsMobileView extends StatelessWidget {
  const SkillsMobileView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

final skills = ['Flutter', 'Firebase', 'UI Design'];
