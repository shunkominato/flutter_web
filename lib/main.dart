import 'package:flutter/material.dart';
import 'package:hellow_world/header/header_view.dart';
import 'package:hellow_world/navigation_bar/navigation_bar_view.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'hellowwww',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PortfolioView(),
    );
  }
}

class PortfolioView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    print(height);
    print(width);
    return Scaffold(
      drawer: DrawerView(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            NavigationBarView(),
            HeaderView(),
            Container(height: height, width: width, color: Colors.blue),
          ],
        ),
      ),
    );
  }
}

class DrawerView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (_, size) {
        if (!size.isMobile) return SizedBox();
        return Drawer(
            child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text("Item 1"),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text("Item 2"),
              trailing: Icon(Icons.arrow_forward),
            ),
          ],
        ));
      },
    );
  }
}
