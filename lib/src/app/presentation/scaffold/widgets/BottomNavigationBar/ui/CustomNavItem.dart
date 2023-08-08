import 'package:flutter/material.dart';
import 'package:smart_pro/src/app/presentation/scaffold/widgets/BottomNavigationBar/data/MBottomNavigationBarItem.dart';

class CustomNavItem extends StatelessWidget {
  CustomNavItem(
      {required this.item,
      required this.selected,
      required this.height,
      required this.curve,
      required this.duration,
      required this.changeIndex});

  ///[item] SuperNavItem object which contains all of data to display.
  final MBottomNavigationBarItem item;

  ///[selected] To check how to show the tab when it is selected.
  final bool selected;

  ///[height] Height of the tab.
  final double height;

  ///[duration] The transition duration.
  final Duration duration;

  ///[curve] The transition curve.
  final Curve curve;

  ///[changeIndex] The callback method the change the state.
  final GestureTapCallback changeIndex;

  @override

  /// Building the widget
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: InkWell(
        onTap: changeIndex,
        highlightColor: item.highlightColor.withOpacity(0.6),
        splashColor: item.splashColor.withOpacity(0.4),
        hoverColor: item.hoverColor.withOpacity(0.6),
        child: Ink(
          child: AnimatedContainer(
            height: height,
            duration: duration,
            curve: curve,
            decoration: BoxDecoration(
              border: selected
                  ? Border(
                      top: BorderSide(
                          color: item.borderBottomColor,
                          width: item.borderBottomWidth))
                  : const Border(
                      top: BorderSide(color: Colors.transparent, width: 0)),
            ),
            child: item.title.isNotEmpty
                ? Padding(
                    padding: const EdgeInsets.only(
                        left: 15, right: 15, top: 5 , bottom: 5),
                    child: ElevatedButton(
                      onPressed: changeIndex,
                      style: ElevatedButton.styleFrom(
                        textStyle: TextStyle(fontSize: 5, color: Colors.black),
                        backgroundColor: item.borderBottomColor,
                        padding: EdgeInsets.all(10.0),
                        maximumSize: Size(double.infinity, double.infinity),
                        side: BorderSide(
                          width: 1.0,
                        ),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            selected ? item.selectedIcon : item.unSelectedIcon,
                            size: selected ? item.size - 10 : item.size - 10,
                            color: Colors.black,
                          ),
                          SizedBox(width: 2),
                          Text(
                            item.title,
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  )
                : Icon(
                    selected ? item.selectedIcon : item.unSelectedIcon,
                    size: selected ? item.size : item.size - 5,
                    color: selected
                        ? item.selectedIconColor
                        : item.unSelectedIconColor.withOpacity(0.5),
                  ),
          ),
        ),
      ),
    );
  }
}
