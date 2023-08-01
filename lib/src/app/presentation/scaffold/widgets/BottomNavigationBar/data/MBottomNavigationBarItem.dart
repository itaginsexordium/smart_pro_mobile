import 'package:flutter/material.dart';

/// A tab to display in SuperBottomNavigationBar.
class MBottomNavigationBarItem {
  ///The Constructor of SuperBottomNavigationBarItem.
  const MBottomNavigationBarItem(
      {this.unSelectedIcon = Icons.star_border_outlined,
      this.selectedIcon = Icons.star,
      this.size = 30,
      this.selectedIconColor = Colors.white,
      this.unSelectedIconColor = Colors.white54,
      this.highlightColor = Colors.transparent, //Colors.grey.withOpacity(0.6)
      this.splashColor = Colors.transparent,
      this.hoverColor = Colors.transparent, //Colors.grey.withOpacity(0.6)
      this.borderBottomColor = const Color(0xFF6c5ce7),
      this.borderBottomWidth = 3,
      this.backgroundShadowColor = const Color(0xFF6c5ce7)})
      :
        // assert(unSelectedIcon != null),
        // assert(selectedIcon != null),
        assert(size >= 7),
        // assert(selectedIconColor != null),
        // assert(unSelectedIconColor != null),
        // assert(highlightColor != null),
        // assert(splashColor != null),
        // assert(hoverColor != null),
        // assert(borderBottomColor != null),
        // assert(backgroundShadowColor != null),
        assert(borderBottomWidth >= 1);

  /* Variables */

  ///[unSelectedIcon] The icon of the tab when tab is not selected.
  final IconData unSelectedIcon;

  ///[selectedIcon] The icon of the tab when tab is selected.
  final IconData selectedIcon;

  ///[size] The size of the tab.
  final double size;

  ///[selectedIconColor] The primary color to use for this tab.
  final Color selectedIconColor;

  ///[unSelectedIconColor] The color to display when this tab is not selected.
  final Color unSelectedIconColor;

  ///[highlightColor] The highlight color of the ink response when pressed.
  ///You can use it to add ripple effect.
  final Color highlightColor;

  ///[splashColor] The splash color of the ink response.
  ///You can use it to add ripple effect.
  final Color splashColor;

  ///[hoverColor] The color of the ink response when a pointer is hovering over it.
  ///You can use it to add ripple effect.
  final Color hoverColor;

  ///[borderBottomColor] The color of borderBottom.
  final Color borderBottomColor;

  ///[borderBottomWidth] The width of borderBottom.
  final double borderBottomWidth;

  ///[backgroundShadowColor] The shadow color behind the icon.
  final Color backgroundShadowColor;
}
