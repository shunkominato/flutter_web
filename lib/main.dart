import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hellow_world/header/header_view.dart';
import 'package:hellow_world/navigation_bar/navigation_bar_view.dart';
import 'package:hellow_world/project/project_view.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'hellowwww',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextTheme(
          headline2: GoogleFonts.montserrat(color: Colors.black),
          headline4: GoogleFonts.montserrat(fontSize: 30, color: Colors.black),
        ),
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
      endDrawer: DrawerView(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            NavigationBarView(),
            HeaderView(),
            ProjectView(),
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
                  gradient: LinearGradient(
                      colors: [Colors.white, Colors.blue],
                      tileMode: TileMode.repeated)),
            ),
            for (var item in kNavigationItems)
              ListTile(
                title: Text(item.text),
                trailing: Icon(Icons.arrow_forward),
              ),
          ],
        ));
      },
    );
  }
}
