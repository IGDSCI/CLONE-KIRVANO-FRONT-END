// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TelaInicialStl extends StatelessWidget {
  const TelaInicialStl({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TelaInicialStf(),
    );
  }
}


class TelaInicialStf extends StatefulWidget {
  const TelaInicialStf({super.key});
  @override
  State<TelaInicialStf> createState() => _TelaInicialStfState();
}


class _TelaInicialStfState extends State<TelaInicialStf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}