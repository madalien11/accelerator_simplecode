import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../generated/l10n.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() => _counter++);
  }

  void _decrementCounter() {
    setState(() => _counter--);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).mainScreen),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('${S.of(context).language}: '),
                DropdownButton(
                  value: Intl.getCurrentLocale(),
                  items: [
                    DropdownMenuItem(
                      value: 'en',
                      child: Text(
                        S.of(context).english,
                      ),
                    ),
                    DropdownMenuItem(
                      value: 'ru_RU',
                      child: Text(
                        S.of(context).russian,
                      ),
                    ),
                  ],
                  onChanged: (val) async {
                    if (val == 'ru_RU') {
                      await S.load(const Locale('ru', 'RU'));
                      setState(() {});
                    } else if (val == 'en') {
                      await S.load(const Locale('en'));
                      setState(() {});
                    }
                  },
                ),
              ],
            ),
            const Spacer(),
            Text(S.of(context).counterValue),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: _incrementCounter,
                  child: const Text("+"),
                ),
                ElevatedButton(
                  onPressed: _decrementCounter,
                  child: const Text("-"),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
