import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter_provider.dart';
import 'index_page_provider.dart';
import 'tabs/tab_page_1.dart';
import 'tabs/tab_page_2.dart';
import 'tabs/tab_page_3.dart';

class CounterWithState extends StatefulWidget {
  const CounterWithState({super.key});

  @override
  State<CounterWithState> createState() => _CounterWithStateState();
}

class _CounterWithStateState extends State<CounterWithState> {
  static const List<Widget> _widgetOptions = <Widget>[
    Page1(),
    Page2(),
    Page3(),
  ];
  @override
  Widget build(BuildContext context) {
    final counterProvider = context.watch<CounterProvider>();
    final indexProvider = context.watch<IndexPageProvider>();
    return Scaffold(
      appBar: AppBar(
          title: Text('Counter App ${counterProvider.counter}'),
          actions: [
            counterProvider.counter > 0
                ? IconButton(
                    icon: const Icon(Icons.refresh_rounded),
                    onPressed: counterProvider.resetCounter,
                  )
                : Container(),
          ]),
      body: Center(
        child: _widgetOptions.elementAt(indexProvider.page),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_car),
            label: 'Page 1',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_transit),
            label: 'Page 2',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_bike),
            label: 'Page 3',
            backgroundColor: Colors.blue,
          ),
        ],
        currentIndex: indexProvider.page,
        selectedItemColor: Colors.amber[800],
        onTap: indexProvider.setPage,
      ),
    );
  }
}
