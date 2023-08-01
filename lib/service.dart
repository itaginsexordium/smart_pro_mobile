
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smart_pro/src/app/app.dart';

 class ServiceBuild extends StatelessWidget {
  const ServiceBuild({super.key});

  @override
  Widget build(BuildContext context) {
    return const App();

    // MultiBlocProvider(
    //     providers:  [
    //     ],
    //     child: MaterialApp(
    //       title: 'Flutter Demo',
    //       theme: ThemeData(
    //         colorScheme:
    //             ColorScheme.fromSeed(seedColor: Colors.lightGreenAccent),
    //         useMaterial3: true,
    //       ),
    //       home: const MyHomePage(title: 'Flutter Demo Home Page'),
    //     ));
  }
}


// Future<MultiBlocProvider> serviceBuild(
//     FutureOr<Widget> Function() builder) async {
