import 'package:app_usf_2020_2s/commom/appColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PrimeiraPagina extends StatefulWidget {
  static const routeName = 'Primeira_Pagina';
  @override
  _PrimeiraPaginaState createState() => _PrimeiraPaginaState();
}

class _PrimeiraPaginaState extends State<PrimeiraPagina> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Text("Olá! Primeira página"),
        ));
  }
}
