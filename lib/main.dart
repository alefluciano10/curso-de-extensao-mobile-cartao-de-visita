import 'package:flutter/material.dart';

import './../widgets/widgets.dart';
import './../pages/pages.dart';

void main() => runApp(const CartaoVisita());

class CartaoVisita extends StatefulWidget {
  const CartaoVisita({super.key});

  @override
  State<CartaoVisita> createState() => _CartaoVisitaState();
}

class _CartaoVisitaState extends State<CartaoVisita> {
  bool _isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cartão de Visita',
      theme: _isDarkMode ? DarkTheme.theme : LightTheme.theme,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Cartão de Visita Virtual',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: _isDarkMode ? Colors.white : Colors.indigo[900],
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(_isDarkMode ? Icons.wb_sunny : Icons.nightlight_round),
              tooltip: _isDarkMode ? 'Modo Claro' : 'Modo Escuro',
              onPressed: () {
                setState(() => _isDarkMode = !_isDarkMode);
              },
            ),
          ],
          centerTitle: true,
        ),
        body: CardPage(),
      ),
    );
  }
}
