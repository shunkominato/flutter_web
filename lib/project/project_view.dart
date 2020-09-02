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
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: 864,
        width: kInitWidth,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('aa', style: Theme.of(context).textTheme.headline2),
            SizedBox(height: 20),
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              for (final item in kProjectItems)
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(item.image),
                      SizedBox(height: 15),
                      Text(item.title,
                          style: Theme.of(context).textTheme.headline4),
                      SizedBox(height: 10),
                      Text(
                        item.description,
                        style: TextStyle(fontSize: 17),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          for (final tech in item.technologies)
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Chip(
                                  label: Text(tech,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline4)),
                            )
                        ],
                      )
                    ],
                  ),
                ))
            ])
          ],
        ));
  }
}

class ProjectMobileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
