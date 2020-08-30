import 'package:flutter/material.dart';
import 'package:hellow_world/utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ProjectItem {
  final String image;
  final String title;
  final String description;
  final List<String> technologies;

  ProjectItem(
      {@required this.image,
      @required this.title,
      @required this.description,
      @required this.technologies});
}

final kProjectItems = [
  ProjectItem(image: null, title: null, description: null, technologies: null)
];

class ProjectView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (_, size) {
      if (size.isMobile) return ProjectMobileView();
      return ProjectDesktopView();
    });
  }
}

class ProjectDesktopView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: 864,
        width: kInitWidth,
        color: Colors.yellow,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Text('aa', style: Theme.of(context).textTheme.headline2)],
        ));
  }
}

class ProjectMobileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
