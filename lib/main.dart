import 'package:flutter/material.dart';
import 'package:nike_store/pages/consuta_cep_page.dart';
import 'package:nike_store/pages/login_page.dart';
import 'package:nike_store/pages/store_page.dart';
import 'package:device_preview/device_preview.dart';

void main() => runApp(
      DevicePreview(
        enabled: true,
        builder: (context) => MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Mukta',
        colorScheme: ColorScheme.fromSeed(primary: Colors.black, seedColor: Colors.grey),
        useMaterial3: true,
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginPage(),
        //criar quando necessário
        '/store': (context) => const StorePage(),
        '/consulta-cep': (context) => const ConsultaCepPage(),
      },
    );
  }
}
