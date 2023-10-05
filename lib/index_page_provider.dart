import 'package:flutter/material.dart';

class IndexPageProvider extends ChangeNotifier {
  int _indexPage = 0;
  PageController _pageController = PageController(initialPage: 0);
  static const List<MaterialColor> colors = [
    Colors.lightBlue,
    Colors.brown,
    Colors.blueGrey
  ];

  int get page => _indexPage;
  PageController get pageController => _pageController;

  void setPage(int index) {
    _indexPage = index;
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
    );
    notifyListeners();
  }

  Color get color => colors[_indexPage];
}
