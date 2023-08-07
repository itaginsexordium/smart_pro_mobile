import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:smart_pro/src/app/presentation/scaffold/widgets/BottomNavigationBar/data/MBottomNavigationBarItem.dart';
import 'package:smart_pro/src/app/presentation/scaffold/widgets/BottomNavigationBar/ui/CustomBottomNavigationBar.dart';

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomBottomNavigationBar(
      currentIndex: 0,
      items: [
        MBottomNavigationBarItem(
          unSelectedIcon: TablerIcons.home,
          selectedIcon: TablerIcons.home,
          splashColor: Theme.of(context).primaryColor,
          borderBottomColor: Theme.of(context).primaryColor,
          backgroundShadowColor: Theme.of(context).primaryColor,
        ),
        MBottomNavigationBarItem(
          unSelectedIcon: TablerIcons.basket,
          selectedIcon: TablerIcons.basket,
          splashColor: Theme.of(context).primaryColor,
          borderBottomColor: Theme.of(context).primaryColor,
          backgroundShadowColor: Theme.of(context).primaryColor,
        ),
        MBottomNavigationBarItem(
          unSelectedIcon: TablerIcons.heart,
          selectedIcon: TablerIcons.heart,
          splashColor: Theme.of(context).primaryColor,
          borderBottomColor: Theme.of(context).primaryColor,
          backgroundShadowColor: Theme.of(context).primaryColor,
        ),
        MBottomNavigationBarItem(
          title: 'войти',
          unSelectedIcon: TablerIcons.user_circle,
          selectedIcon: TablerIcons.user_circle,
          splashColor: Theme.of(context).primaryColor,
          borderBottomColor: Theme.of(context).primaryColor,
          backgroundShadowColor: Theme.of(context).primaryColor,
        ),
      ],
      onSelected: (index) {
        print('tab $index');
      },
    );
  }
}
