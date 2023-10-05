import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../counter_provider.dart';
import '../index_page_provider.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    final counterProvider = context.watch<CounterProvider>();
    return Container(
        color: context.watch<IndexPageProvider>().color,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Page 3',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w400),
            ),
            ElevatedButton(
                onPressed: counterProvider.setPlusOne, child: const Text('+1'))
          ],
        ));
  }
}
