import 'package:flutter/material.dart';

class TabControllerScope extends InheritedWidget {
  final TabController tabController;

  TabControllerScope({
    required this.tabController,
    required Widget child,
  }) : super(child: child);

  @override
  bool updateShouldNotify(TabControllerScope oldWidget) {
    return tabController != oldWidget.tabController;
  }

  static TabControllerScope? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<TabControllerScope>();
  }
}
