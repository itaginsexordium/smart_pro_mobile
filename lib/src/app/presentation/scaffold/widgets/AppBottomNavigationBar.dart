import 'package:flutter/material.dart';
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
          unSelectedIcon: Icons.home_outlined,
          selectedIcon: Icons.home,
          splashColor: Theme.of(context).primaryColor,
          borderBottomColor: Theme.of(context).primaryColor,
          backgroundShadowColor: Theme.of(context).primaryColor,
          // selectedIconColor: Theme.of(context).primaryColor,
          // unSelectedIconColor: Colors.grey
        ),
        MBottomNavigationBarItem(
            unSelectedIcon: Icons.shopping_cart_outlined,
            selectedIcon: Icons.shopping_cart,
            borderBottomColor: Theme.of(context).primaryColor,
            // splashColor: Theme.of(context).colorScheme.onPrimary,
            // borderBottomColor: Theme.of(context).colorScheme.onPrimary,
            // backgroundShadowColor: Theme.of(context).colorScheme.onPrimary,
            // selectedIconColor: Theme.of(context).colorScheme.onPrimary,
            unSelectedIconColor: Colors.grey),
        MBottomNavigationBarItem(
            unSelectedIcon: Icons.favorite_border,
            selectedIcon: Icons.favorite,
            borderBottomColor: Theme.of(context).primaryColor,
            // splashColor: Theme.of(context).colorScheme.onPrimary,
            // borderBottomColor: Theme.of(context).colorScheme.onPrimary,
            // backgroundShadowColor: Theme.of(context).colorScheme.onPrimary,
            selectedIconColor: Theme.of(context).primaryColor,
            unSelectedIconColor: Colors.grey),
        MBottomNavigationBarItem(
            unSelectedIcon: Icons.account_circle_outlined,
            selectedIcon: Icons.account_circle,
            borderBottomColor: Theme.of(context).primaryColor,
            // splashColor: Theme.of(context).colorScheme.onPrimary,
            // borderBottomColor: Theme.of(context).colorScheme.onPrimary,
            // backgroundShadowColor: Theme.of(context).colorScheme.onPrimary,
            // selectedIconColor: Theme.of(context).colorScheme.onPrimary,
            unSelectedIconColor: Colors.grey),
      ],
      onSelected: (index) {
        print('tab $index');
      },
    );
  }
}
