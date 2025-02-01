import 'package:flutter/material.dart';
import 'package:perfume_ecommerce/pages/intro.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Perfume Ecommerce',
      debugShowCheckedModeBanner: false,
      home: Intro(),
    );
  }
}
