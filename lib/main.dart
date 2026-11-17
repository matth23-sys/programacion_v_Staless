
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Presentacion/screens/ronny_villa.dart';
import 'package:flutter_application_1/Presentacion/screens/mateo_guerron.dart';
import 'package:flutter_application_1/Presentacion/screens/jordan_iza.dart';
import 'package:flutter_application_1/Presentacion/screens/steven_ninasunta.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PantallasGrupo(),
    );
  }
}

class PantallasGrupo extends StatefulWidget {
  const PantallasGrupo({super.key});

  @override
  State<PantallasGrupo> createState() => _PantallasGrupoState();
}

class _PantallasGrupoState extends State<PantallasGrupo> {
  int indiceActual = 0;

  final List<Widget> pantallas = const [
    RonnyVilla(),
    MateoGuerron(),
    JordanIza(),
    StevenNinasunta(),
  ];

  void siguientePantalla() {
    setState(() {
      indiceActual = (indiceActual + 1) % pantallas.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: siguientePantalla,
      child: pantallas[indiceActual],
    );
  }
}
