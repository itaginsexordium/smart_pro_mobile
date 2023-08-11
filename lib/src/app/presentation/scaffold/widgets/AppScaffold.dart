import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:smart_pro/src/app/bloc/navigatorBloc/navigator_bloc.dart';
import 'package:smart_pro/src/app/presentation/scaffold/widgets/AppSearchBar.dart';

import 'AppBottomNavigationBar.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<NavigatorBloc>().add(AppStarted());
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: SvgPicture.asset('assets/logo.svg'),
          actions: <Widget>[
            Builder(builder: (context) {
              return IconButton(
                onPressed: () {
                  showSearch(context: context, delegate: AppSearchDelegate());
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
        endDrawer: Drawer(),
        body: Center(child: BlocBuilder<NavigatorBloc, NavigatorMainState>(
          builder: (context, state) {
            return switch (state) {
              NavigatorHome() => Text('home'),
              NavigatorCart() => Text('cart'),
              NavigatorProfile() => Text('profile'),
              NavigatorCatalog() => Text('catalog'),
            };
          },
        )),
        bottomNavigationBar: const AppBottomNavigationBar());
  }
}
