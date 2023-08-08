import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:lit_starfield/view/lit_starfield_container.dart';
import 'package:smart_pro/src/app/presentation/scaffold/widgets/AppBottomNavigationBar.dart';
import 'package:smart_pro/src/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: basicTheme(),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: SvgPicture.asset('assets/logo.svg'),
        actions: <Widget>[
          Builder(builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(TablerIcons.search),
            );
          }),
          Builder(builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
              icon: const Icon(TablerIcons.menu),
            );
          }),
        ],
      ),
      drawer: Drawer(),
      endDrawer: Drawer(),
      body: Stack(
        children: [
          LitStarfieldContainer(
            // animated: true,
            number: 500,
            backgroundDecoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
          ),
          Center(
              child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              width: 350,
              height: 400,
              // color: Colors.white,
              child: Stack(
                children: [
                  //blur effect
                  BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                    child: Container(),
                  ),
                  // gradient effect
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment(0.8, 1),
                            colors: [
                              Color.fromRGBO(249, 249, 249, 0.7),
                              Color.fromRGBO(196, 196, 196, 0.14)
                            ])),
                  ),
                  //child
                  Center(
                    child: Text('text'),
                  )
                ],
              ),
            ),
          ))
        ],
      ),
      bottomNavigationBar: const AppBottomNavigationBar(),
    );
  }
}
