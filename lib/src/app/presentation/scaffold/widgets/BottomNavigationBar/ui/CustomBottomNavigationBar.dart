import 'package:flutter/material.dart';
import 'package:smart_pro/src/app/presentation/scaffold/widgets/BottomNavigationBar/data/MBottomNavigationBarItem.dart';
import 'package:smart_pro/src/app/presentation/scaffold/widgets/BottomNavigationBar/ui/CustomNavItem.dart';

// ignore: must_be_immutable
class CustomBottomNavigationBar extends StatefulWidget {
  ///The Constructor of SuperBottomNavigationBar.
  ///items is required.
  CustomBottomNavigationBar({
    required this.items,
    this.currentIndex = 0,
    this.height = 40.0,
    this.backgroundColor = const Color(0xFF191919),
    this.padding = EdgeInsets.zero,
    this.curve = Curves.linear,
    this.duration = const Duration(milliseconds: 400),
    this.elevation = 8,
    this.onSelected,
  })  : assert(items.length > 0),
        assert(items.length <= 10),
        assert(currentIndex < items.length),
        assert(currentIndex >= 0),
        assert(height >= 25),
        // assert(backgroundColor != null),
        // assert(curve != null),
        // assert(duration != null),
        assert(elevation >= 0.0);
  // assert(padding != null);

  /* Variables */

  ///[items] List of SuperBottomNavigationBarItem to show them in your BottomNavigationBar.
  final List<MBottomNavigationBarItem> items;

  ///[currentIndex] The tab to display.
  final int currentIndex;

  ///[height] Height of the BottomNavigationBar.
  final double height;

  ///[backgroundColor] backgroundColor of BottomNavigationBar.
  final Color backgroundColor;

  ///[curve] The transition curve.
  final Curve curve;

  ///[duration] The transition duration.
  final Duration duration;

  ///[padding] The padding surrounding the entire widget.
  ///
  /// You can use to adding floating effect.
  final EdgeInsets padding;

  ///[elevation] The elevation of the widget.
  final double elevation;

  ///[onSelected] Callback method , Return the index of the tab that was tapping.
  ValueChanged<int>? onSelected = (int index) {};

  @override
  State<StatefulWidget> createState() => _CustomBottomNavigationBarState();
}

/* SuperBottomNavigationBar Widget Class */
/// This class is represent BottomNavigationBar Widget.
class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  /// This class is represent BottomNavigationBar Widget.
  int selected = 0;

  @override
  CustomBottomNavigationBar get widget => super.widget;

  @override
  void initState() {
    super.initState();
    selected = widget.currentIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding,
      child: Material(
        color: widget.backgroundColor,
        elevation: widget.elevation,
        child: InkWell(
          child: Row(
            children: List.generate(
                widget.items.length,
                (index) => Expanded(
                      child: CustomNavItem(
                        item: widget.items[index],
                        selected: selected == index,
                        height: widget.height,
                        curve: widget.curve,
                        duration: widget.duration,
                        changeIndex: () {
                          ///Change the state.
                          setState(() {});
                          selected = index;
                          widget.onSelected!(index);
                        },
                      ),
                    )),
          ),
        ),
      ),
    );
  }
}
