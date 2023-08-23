import 'package:flutter/material.dart';
import 'package:whatsapp/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp Web',
      theme: ThemeData(
        //useMaterial3: true,
        colorSchemeSeed: Colors.teal,
        //primarySwatch: Colors.teal,
      ),
      home: const HomePage(),
    );
  }
}
