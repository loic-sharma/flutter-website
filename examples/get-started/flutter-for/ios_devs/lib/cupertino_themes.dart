import 'package:flutter/cupertino.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    // #docregion theme
    return const CupertinoApp(
      theme: CupertinoThemeData(brightness: .dark),
      home: HomePage(),
    );
    // #enddocregion theme
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(middle: Text('Cupertino')),
      child: Center(
        // #docregion styling-text
        child: Text(
          'Hello, world!',
          style: TextStyle(
            fontSize: 30,
            fontWeight: .bold,
            color: CupertinoColors.systemYellow,
          ),
        ),
        // #enddocregion styling-text
      ),
    );
  }
}
