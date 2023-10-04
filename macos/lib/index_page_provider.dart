import 'package:flutter/material.dart';

class IndexPageProvider extends ChangeNotifier {
  int _indexPage = 0;
  static const List<MaterialColor> colors = [
    Colors.lightBlue,
    Colors.brown,
    Colors.blueGrey
  ];

  int get page => _indexPage;

  void setPage(int index) {
    _indexPage = index;
    notifyListeners();
  }

  Color get color => colors[_indexPage];
}
