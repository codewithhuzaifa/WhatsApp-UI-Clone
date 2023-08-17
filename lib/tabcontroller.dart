import 'package:flutter/material.dart';

class _TabControllerScope extends InheritedWidget {
  final TabController tabController;

  _TabControllerScope({
    required this.tabController,
    required Widget child,
  }) : super(child: child);

  @override
  bool updateShouldNotify(_TabControllerScope oldWidget) {
    return tabController != oldWidget.tabController;
  }

  static _TabControllerScope? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<_TabControllerScope>();
  }
}
