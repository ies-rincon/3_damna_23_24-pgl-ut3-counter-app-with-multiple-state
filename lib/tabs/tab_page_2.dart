import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../counter_provider.dart';
import '../index_page_provider.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    final counterProvider = context.watch<CounterProvider>();
    int clickCounter = counterProvider.counter;
    return Container(
      color: context.watch<IndexPageProvider>().color,
      alignment: Alignment.center,
      child: Text(
        'Page 2: \nNº Clicks --> $clickCounter',
        style: const TextStyle(
            color: Colors.white, fontSize: 40, fontWeight: FontWeight.w400),
      ),
    );
  }
}
