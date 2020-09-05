import 'package:flutter/material.dart';
import 'package:hellow_world/project/project_item_body.dart';
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
  ProjectItem(
    image: 'images/1.jpg',
    title: 'sample1',
    description: 'nail',
    technologies: ['flutter'],
  ),
  ProjectItem(
    image: 'images/2.jpeg',
    title: 'sample2',
    description: 'nail2',
    technologies: ['flutter2'],
  ),
  ProjectItem(
    image: 'images/3.jpeg',
    title: 'sample3',
    description: 'nail3',
    technologies: ['flutter3'],
  ),
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
        padding: kScreenPadding,
        height: 864,
        width: kInitWidth,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('aa', style: Theme.of(context).textTheme.headline2),
            SizedBox(height: 20),
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              for (final item in kProjectItems)
                Expanded(child: ProjectItemBody(item: item))
            ])
          ],
        ));
  }
}

class ProjectMobileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: kScreenPadding,
        width: kInitWidth,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(
              thickness: 3,
            ),
            SizedBox(height: 40),
            Text('aa', style: Theme.of(context).textTheme.headline2),
            SizedBox(height: 40),
            for (final item in kProjectItems) ProjectItemBody(item: item)
          ],
        ));
  }
}
