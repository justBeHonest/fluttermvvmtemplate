import 'package:flutter/material.dart';
import 'package:fluttermvvmtemplate/core/init/notifier/provider_list.dart';
import 'package:fluttermvvmtemplate/core/init/notifier/theme_notifier.dart';
import 'package:fluttermvvmtemplate/view/authenticate/test/view/test_view.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [...ApplicationProvider.instance.dependItems],
      child: MaterialApp(
        home: TestView(),
        theme: Provider.of<ThemeNotifier>(context, listen: false).currentTheme,
      ),
    );
  }
}
