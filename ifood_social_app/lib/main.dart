import 'package:flutter/material.dart';
import 'package:ifood_social_app/injections/app_injections.dart';
import 'package:ifood_social_app/screens/home/presentation/home.page.dart';
import 'package:ifood_social_app/shared/text_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await AppInjections.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: TextApp.nameApp,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
